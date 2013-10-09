.class public Lcom/android/settingsstock/WirelessSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/WirelessSettings$3;
    }
.end annotation


# static fields
.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final KEY_CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field private static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"

.field private static final KEY_MTK_TOGGLE_NFC:Ljava/lang/String; = "toggle_mtk_nfc"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_RCSE_SETTINGS:Ljava/lang/String; = "rcse_settings"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_TOGGLE_NSD:Ljava/lang/String; = "toggle_nsd"

.field private static final KEY_USB_SHARING:Ljava/lang/String; = "usb_sharing"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final RCSE_SETTINGS_INTENT:Ljava/lang/String; = "com.mediatek.rcse.RCSE_SETTINGS"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WirelessSettings"

.field private static final USB_DATA_STATE:Ljava/lang/String; = "mediatek.intent.action.USB_DATA_STATE"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settingsstock/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMTKNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

.field private mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settingsstock/nfc/NfcEnabler;

.field private mNfcPreference:Lcom/mediatek/nfc/NfcPreference;

.field private mNsdEnabler:Lcom/android/settingsstock/NsdEnabler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTetherSettings:Landroid/preference/Preference;

.field private mUsbSharing:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/WirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/WirelessSettings$1;-><init>(Lcom/android/settingsstock/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/WirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/WirelessSettings$2;-><init>(Lcom/android/settingsstock/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/WirelessSettings;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settingsstock/WirelessSettings;Lcom/android/internal/telephony/ITelephony;)Lcom/android/internal/telephony/ITelephony;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settingsstock/WirelessSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/WirelessSettings;->updateMobileNetworkEnabled()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/settingsstock/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMobileNetworkEnabled()V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/settingsstock/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v6, :cond_0

    const-string v4, "WirelessSettings"

    const-string v5, "Could not get mTelephony object"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v0, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/android/settingsstock/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v2

    iget-object v6, p0, Lcom/android/settingsstock/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v0, v5

    :goto_1
    const-string v4, "WirelessSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualHasSim state: sim1Exist?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim2Exist?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settingsstock/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "WirelessSettings"

    const-string v5, "RemoteException happens......"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b0932

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settingsstock/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settingsstock/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settingsstock/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v18, 0x7f050050

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_f

    const/4 v7, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v18, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    const-string v18, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    const-string v18, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    const-string v18, "toggle_mtk_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/mediatek/nfc/NfcPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mNfcPreference:Lcom/mediatek/nfc/NfcPreference;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mNfcPreference:Lcom/mediatek/nfc/NfcPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    new-instance v18, Lcom/android/settingsstock/nfc/NfcEnabler;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v11, v3}, Lcom/android/settingsstock/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mNfcEnabler:Lcom/android/settingsstock/nfc/NfcEnabler;

    const-string v18, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    const-string v18, "usb_sharing"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;

    const-string v18, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    new-instance v18, Lcom/android/settingsstock/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/settingsstock/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settingsstock/AirplaneModeEnabler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "airplane_mode_toggleable_radios"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x111003f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_10

    const/4 v8, 0x1

    :goto_1
    if-nez v8, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const-string v18, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_2
    if-eqz v17, :cond_1

    const-string v18, "wifi"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    :cond_1
    const-string v18, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const-string v19, "toggle_airplane"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_2
    if-eqz v7, :cond_3

    const-string v18, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    if-eqz v17, :cond_4

    const-string v18, "nfc"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    :cond_4
    const-string v18, "toggle_airplane"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    const-string v18, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const-string v19, "toggle_airplane"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mNfcEnabler:Lcom/android/settingsstock/nfc/NfcEnabler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    if-nez v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    const-string v18, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v18, "device_policy"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v18

    if-nez v18, :cond_13

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v18, "connectivity"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v18, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    if-nez v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_14

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1110044

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_b

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v18, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/4 v6, 0x0

    :cond_b
    :goto_5
    if-nez v7, :cond_c

    if-nez v6, :cond_d

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const-string v18, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_d

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.mediatek.rcse.RCSE_SETTINGS"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_e

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_15

    :cond_e
    const-string v18, "WirelessSettings"

    const-string v19, "com.mediatek.rcse.RCSE_SETTINGS is not installed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_6
    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "mediatek.intent.action.USB_DATA_STATE"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v18, v0

    const-string v19, "android.hardware.usb.action.USB_STATE"

    invoke-virtual/range {v18 .. v19}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v18, v0

    const-string v19, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual/range {v18 .. v19}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_11
    if-eqz v17, :cond_12

    const-string v18, "wimax"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    if-eqz v8, :cond_0

    :cond_12
    const-string v18, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const-string v18, "toggle_airplane"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_4

    :catch_0
    move-exception v4

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_15
    const-string v18, "WirelessSettings"

    const-string v19, "com.mediatek.rcse.RCSE_SETTINGS is installed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settingsstock/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settingsstock/AirplaneModeEnabler;->pause()V

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNfcEnabler:Lcom/android/settingsstock/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNfcEnabler:Lcom/android/settingsstock/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/settingsstock/nfc/NfcEnabler;->pause()V

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNsdEnabler:Lcom/android/settingsstock/NsdEnabler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNsdEnabler:Lcom/android/settingsstock/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/settingsstock/NsdEnabler;->pause()V

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, v6}, Lcom/android/settingsstock/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->setUsbInternet(Z)Z

    const-class v0, Lcom/mediatek/wireless/UsbSharingInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0b016b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingsstock/WirelessSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :goto_1
    move v0, v6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setUsbInternet(Z)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/WirelessSettings;->mNfcPreference:Lcom/mediatek/nfc/NfcPreference;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/mediatek/nfc/NfcSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v4

    move-object v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settingsstock/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/settingsstock/AirplaneModeEnabler;->resume()V

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNfcEnabler:Lcom/android/settingsstock/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNfcEnabler:Lcom/android/settingsstock/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/settingsstock/nfc/NfcEnabler;->resume()V

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNsdEnabler:Lcom/android/settingsstock/NsdEnabler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNsdEnabler:Lcom/android/settingsstock/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/settingsstock/NsdEnabler;->resume()V

    :cond_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume(), call state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingsstock/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
