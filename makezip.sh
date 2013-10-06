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

# Modify build.prop
echo "[#] Modifying build.prop..."
unzip ${OUT_ZIP} system/build.prop
cat ./system/build.prop | sed -e "s/ro\.build\.version\.incremental=.*/ro\.build\.version\.incremental=${MIUI_THISVER_PARSED}/" \
    | sed -e "s/ro\.product\.mod_device=.*/ro\.product\.mod_device=Xtreamer_Q/" \
    | sed -e "s/ro\.skia\.use_data_fonts=.*//g" \
    | sed -e "s/ro\.config\.notification_sound=.*//g" \
    | sed -e "s/ro\.config\.ringtone=.*//g" \
    | sed -e "s/ro\.config\.alarm_alert=.*//g" > build.prop.new

echo "ro.miui.ui.version.code=3" >> build.prop.new
echo "ro.miui.ui.version.name=V5" >> build.prop.new
echo "ro.skia.use_data_fonts=1" >> build.prop.new
echo "ro.config.ringtone=MI.ogg" >> build.prop.new
echo "ro.config.notification_sound=FadeIn.ogg" >> build.prop.new
echo "ro.config.alarm_alert=GoodMorning.ogg" >> build.prop.new
echo "ro.config.sms_received_sound=FadeIn.ogg" >> build.prop.new
echo "ro.config.sms_delivered_sound=MessageComplete.ogg" >> build.prop.new
mv -f ./build.prop.new ./system/build.prop
zip -9mr Xtreamer_Q-MIUI_3.9.27.zip ./system
rm -rf ./system
echo "[i] ${OUT_ZIP} is ready"
