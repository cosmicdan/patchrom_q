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

export MIUI_THISVER_PARSED="${MIUI_THISVER_MAJOR}.${MIUI_THISVER_MINOR}.${MIUI_THISVER_REV}"

export OUT_ZIP="Xtreamer_Q-MIUI_${MIUI_THISVER_PARSED}.zip"


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
unzip ${OUT_ZIP} system/build.prop
cat ./system/build.prop | sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=${MIUI_THISVER_PARSED}/" \
    | sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=Xtreamer_Q/" > build.prop.new

sed -n -e :a -e '/^\n*$/{$d;N;};/\n$/ba' build.prop.new
echo >> build.prop.new
mv -f ./build.prop.new ./system/build.prop
zip -9mr ${OUT_ZIP} ./system
echo "[#] Adding overlay_zip..."
zip -9r ${OUT_ZIP} ./overlay_zip/system
echo "[i] ${OUT_ZIP} is ready"
