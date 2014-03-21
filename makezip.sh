THIS_SCRIPT_HOME=`pwd`

cd ../miui
MIUI_THISVER_RAW=`git show -s --format="%ci" HEAD | sed -e "s/\s.*//"`
MIUI_THISVER_MAJOR=`echo ${MIUI_THISVER_RAW} | sed -e "s/-.*//"`
MIUI_THISVER_RAW=`echo ${MIUI_THISVER_RAW} | sed -e "s/^${MIUI_THISVER_MAJOR}-//"`
MIUI_THISVER_MAJOR=$(( ${MIUI_THISVER_MAJOR} - 2010 ))
MIUI_THISVER_MINOR=`echo ${MIUI_THISVER_RAW} | sed -e "s/-.*//"`
MIUI_THISVER_RAW=`echo ${MIUI_THISVER_RAW} | sed -e "s/^${MIUI_THISVER_MINOR}-//"`
MIUI_THISVER_MINOR=`echo ${MIUI_THISVER_MINOR} | sed -e "s/^[0]//"`
MIUI_THISVER_REV=`echo ${MIUI_THISVER_RAW} | sed -e "s/^[0]//"`
MIUI_OURREV=`date +%y%j`

export MIUI_THISVER_PARSED="${MIUI_THISVER_MAJOR}.${MIUI_THISVER_MINOR}.${MIUI_THISVER_REV}.${MIUI_OURREV}"
export MIUI_THISVER_PARSED_BASE="${MIUI_THISVER_MAJOR}.${MIUI_THISVER_MINOR}.${MIUI_THISVER_REV}"

export OUT_ZIP="Xtreamer_Q-MIUI_${MIUI_THISVER_PARSED}.zip"

cd ../android
git rev-parse HEAD > ../q/Xtreamer_Q-MIUI_${MIUI_THISVER_PARSED}.hash


cd ${THIS_SCRIPT_HOME}
echo "[i] Begin full ZIP build to ${OUT_ZIP}"
make fullota
mv -f ./out/fullota.zip ./${OUT_ZIP}

# Patch APK
mkdir -p ./system/app
cd ./inject_patch/app
for d in *; do 
    if [ -d $d ]; then
        if [ -f ../../out/target_files/SYSTEM/app/$d ]; then
            echo "[i] Patching $d..."
            apktool d -r -t miui ../../out/target_files/SYSTEM/app/$d ./tmp 1>/dev/null 2>/dev/null
            cd $d
            patch -i ../$d/patch.diff -d ../tmp -p 0
            cert=`cat cert`
            cd ../tmp
            apktool b . 1>/dev/null 2>/dev/null
            cd dist
            java -jar $PORT_ROOT/tools/signapk.jar $PORT_ROOT/build/security/$cert.x509.pem $PORT_ROOT/build/security/$cert.pk8 $d $d.signed
            cd ../..
            mv -f ./tmp/dist/$d.signed ../../system/app/$d
            rm -rf ./tmp
        fi
    fi
done
cd ../..

# Modify build.prop
echo "[#] Modifying build.prop..."
unzip ${OUT_ZIP} system/build.prop 1>/dev/null 2>/dev/null
cat ./system/build.prop | sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=${MIUI_THISVER_PARSED}/" \
    | sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=xtreamer_q_xt/" \
    | sed -e "s/ro\.build\.display\.id=.*/ro\.build\.display\.id=Xtreamer MIUI ${MIUI_THISVER_PARSED_BASE}/" \
    | sed -e "s/ro\.custom\.build\.version=.*/ro\.custom\.build\.version=${MIUI_THISVER_PARSED_BASE}/" > build.prop.new
sed -n -e :a -e '/^\n*$/{$d;N;};/\n$/ba' build.prop.new
echo >> build.prop.new
mv -f ./build.prop.new ./system/build.prop

echo "[#] Modifying updater-script..."
unzip ${OUT_ZIP} META-INF/com/google/android/updater-script 1>/dev/null 2>/dev/null
sed -i "s/M8047XT/M8047SA/g" ./META-INF/com/google/android/updater-script

echo "[#] Re-signing LBESEC_MIUI.apk..."
unzip ${OUT_ZIP} system/app/LBESEC_MIUI.apk 1>/dev/null 2>/dev/null
java -jar $PORT_ROOT/tools/signapk.jar $PORT_ROOT/build/security/platform.x509.pem $PORT_ROOT/build/security/platform.pk8 ./system/app/LBESEC_MIUI.apk ./system/app/LBESEC_MIUI.apk.signed
mv -f ./system/app/LBESEC_MIUI.apk.signed ./system/app/LBESEC_MIUI.apk
echo "[#] Adding changes back to target ZIP..."
zip -9mr ${OUT_ZIP} ./system 1>/dev/null 2>/dev/null
zip -9mr ${OUT_ZIP} ./META-INF 1>/dev/null 2>/dev/null
echo "[#] Adding overlay_zip..."
cd overlay_zip
zip -9r ../${OUT_ZIP} ./system 1>/dev/null 2>/dev/null
zip -9r ../${OUT_ZIP} ./data 1>/dev/null 2>/dev/null
echo "[i] ${OUT_ZIP} is ready"
