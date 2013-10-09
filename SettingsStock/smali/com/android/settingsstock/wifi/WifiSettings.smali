.class public Lcom/android/settingsstock/wifi/WifiSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/settingsstock/wifi/WifiSettings$Scanner;,
        Lcom/android/settingsstock/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final CONFIGED_AP:Ljava/lang/String; = "configed_access_points"

.field private static final EXTRA_AUTO_FINISH_ON_CONNECT:Ljava/lang/String; = "wifi_auto_finish_on_connect"

.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field private static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field protected static final EXTRA_SHOW_CUSTOM_BUTTON:Ljava/lang/String; = "wifi_show_custom_button"

.field protected static final EXTRA_SHOW_WIFI_REQUIRED_INFO:Ljava/lang/String; = "wifi_show_wifi_required_info"

.field private static final IMAGE_GRAY:I = 0x4b

.field private static final MENU_ID_ADD_NETWORK:I = 0x4

.field private static final MENU_ID_ADVANCED:I = 0x5

.field private static final MENU_ID_CONNECT:I = 0x7

.field private static final MENU_ID_DISCONNECT:I = 0xa

.field private static final MENU_ID_FORGET:I = 0x8

.field private static final MENU_ID_MODIFY:I = 0x9

.field private static final MENU_ID_P2P:I = 0x3

.field private static final MENU_ID_SCAN:I = 0x6

.field private static final MENU_ID_WPS_PBC:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x2

.field private static final NEW_AP:Ljava/lang/String; = "new_access_points"

.field private static final ORIGIINAL_IMAGE:I = 0xff

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field private static final TRUST_AP:Ljava/lang/String; = "trust_access_points"

.field private static final WIFI_AND_MOBILE_SKIPPED_DIALOG_ID:I = 0x5

.field private static final WIFI_DIALOG_ID:I = 0x1

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x1770

.field private static final WIFI_SKIPPED_DIALOG_ID:I = 0x4

.field private static final WLAN_AP_AND_GPRS:Ljava/lang/String; = "access_points_and_gprs"

.field private static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static final WPS_PIN_DIALOG_ID:I = 0x3


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAutoFinishOnConnection:Z

.field private mConfigedAPCategory:Landroid/preference/PreferenceCategory;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mManuallyConnect:Z

.field private mNewAPCategory:Landroid/preference/PreferenceCategory;

.field private mP2pSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTrustAPCategory:Landroid/preference/PreferenceCategory;

.field private mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mKeyStoreNetworkId:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NO_CERTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingsstock/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/wifi/WifiSettings$1;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;Lcom/android/settingsstock/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    iput-boolean v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mManuallyConnect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/wifi/WifiSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingsstock/wifi/WifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->isPhone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/wifi/WifiSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settingsstock/wifi/WifiSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->emptyScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingsstock/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/settingsstock/wifi/WifiSettings$Multimap;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/android/settingsstock/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;Lcom/android/settingsstock/wifi/WifiSettings$1;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->emptyCategory(Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    if-eqz v15, :cond_3

    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v16, "\"none\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "config.SSID "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "config.imsi "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "config.SIMSLOT "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "config.networkId "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    const-string v16, "\"0\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v14, 0x0

    :cond_1
    :goto_1
    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v16, "\"1232010000000000@wlan.mnc001.mcc232.3gppnetwork.org\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v16, "\"0232010000000000@wlan.mnc001.mcc232.3gppnetwork.org\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_2
    const-string v15, "WifiSettings"

    const-string v16, "in simulator mode, skip"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->setLastPriority(I)V

    new-instance v1, Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v1, v15, v4}, Lcom/android/settingsstock/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/android/settingsstock/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v15, v1, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v15, v1}, Lcom/android/settingsstock/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v15}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    iget-object v0, v1, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v1, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    move/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->isTustAP(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mTrustAPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    const-string v16, "\"1\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "eap: SIM"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mTelephonyManagerEx.getSubscriberId() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "makeNAI(mTelephonyManagerEx.getSubscriberId(), SIM); "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "SIM"

    invoke-static/range {v17 .. v18}, Lcom/android/settingsstock/wifi/WifiDialog;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v15, v4, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "SIM"

    invoke-static/range {v16 .. v17}, Lcom/android/settingsstock/wifi/WifiDialog;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "WifiSettings"

    const-string v16, "user doesn\'t change or remove sim card"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    const-string v15, "WifiSettings"

    const-string v16, "user change or remove sim card"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    const-string v16, " >>mWifiManager.removeNetwork(config.networkId);"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v13

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " <<mWifiManager.removeNetwork(config.networkId); s: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    const-string v16, "   >>saveNetworks();"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v13

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "saveNetworks(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "eap: AKA"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mTelephonyManagerEx.getSubscriberId() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "makeNAI(mTelephonyManagerEx.getSubscriberId(), AKA); "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "AKA"

    invoke-static/range {v17 .. v18}, Lcom/android/settingsstock/wifi/WifiDialog;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v15, v14}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "AKA"

    invoke-static/range {v15 .. v16}, Lcom/android/settingsstock/wifi/WifiDialog;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "WifiSettings"

    const-string v16, "user doesn\'t change or remove usim card"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    const-string v15, "WifiSettings"

    const-string v16, "user change or remove usim card"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    const-string v16, " >> mWifiManager.removeNetwork(config.networkId);"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v13

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " << mWifiManager.removeNetwork(config.networkId); s: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    const-string v16, "   >>saveNetworks();"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v13

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "saveNetworks(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "WifiSettings"

    const-string v16, "   <<saveNetworks();"

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mConfigedAPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_b

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_b

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v16, "[IBSS]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    const/4 v7, 0x0

    iget-object v15, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/android/settingsstock/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v1, v11}, Lcom/android/settingsstock/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v7, 0x1

    goto :goto_4

    :cond_d
    if-nez v7, :cond_b

    new-instance v1, Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v1, v15, v11}, Lcom/android/settingsstock/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v15, v1, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v15, v1}, Lcom/android/settingsstock/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v15}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    iget-object v0, v1, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v1, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    move/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->isTustAP(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mTrustAPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mNewAPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->refreshCategory(Landroid/preference/PreferenceScreen;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :try_start_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, v2

    :goto_5
    return-object v10

    :catch_0
    move-exception v6

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "collection.sort exception;origAccessPoints="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception v6

    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "collection.sort exception;origAccessPoints="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settingsstock/wifi/WifiSettings;->updateWifiState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    :cond_3
    const-string v6, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "newState"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settingsstock/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_4
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settingsstock/wifi/WifiSettings;->changeNextButtonState(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->updateAccessPoints()V

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settingsstock/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    iget-boolean v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settingsstock/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    :cond_6
    const-string v6, "android.net.wifi.NO_CERTIFICATION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v2, ""

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receive  no certification broadcast for AP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b011e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private isPhone()Z
    .locals 2

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/settingsstock/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mKeyStoreNetworkId:I

    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settingsstock/wifi/AccessPoint;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/wifi/WifiSettings;->removeDialog(I)V

    iput-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

    iput-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iput-boolean p2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private updateAccessPoints()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v4, 0x7f0b043a

    invoke-direct {p0, v4}, Lcom/android/settingsstock/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_2

    const v4, 0x7f0b0452

    invoke-direct {p0, v4}, Lcom/android/settingsstock/wifi/WifiSettings;->addMessagePreference(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v4}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->emptyCategory(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    :pswitch_3
    const v4, 0x7f0b0451

    invoke-direct {p0, v4}, Lcom/android/settingsstock/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v5}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][Settings][wifi] wifi connect end ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v5}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->pause()V

    :goto_2
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    :cond_3
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v5}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mTrustAPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/wifi/WifiSettings;->updateAP(Landroid/preference/PreferenceCategory;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConfigedAPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/wifi/WifiSettings;->updateAP(Landroid/preference/PreferenceCategory;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mNewAPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/wifi/WifiSettings;->updateAP(Landroid/preference/PreferenceCategory;)V

    :cond_4
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mManuallyConnect:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->updatePriorityAfterConnect(I)V

    :cond_5
    iput-boolean v8, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_0

    :cond_6
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][Settings][wifi] wifi forget end ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v5}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_3
    if-ltz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v5, :cond_9

    move-object v0, v4

    check-cast v0, Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v5, v6}, Lcom/android/settingsstock/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method private updateWifiState(I)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    iput-object v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iput-object v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->pause()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->resume()V

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentConnectedInfo.getSSID() =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v2}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->updatePriority()V

    goto :goto_1

    :pswitch_1
    const v2, 0x7f0b0439

    invoke-direct {p0, v2}, Lcom/android/settingsstock/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0b0451

    invoke-direct {p0, v2}, Lcom/android/settingsstock/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addNetworkForSelector()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v0}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(Lcom/android/settingsstock/wifi/AccessPoint;Z)V

    :cond_0
    return-void
.end method

.method forget()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->resume()V

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->updateAccessPoints()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/WifiSettings;->changeNextButtonState(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v0}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->updatePriority()V

    goto :goto_0
.end method

.method getAccessPointsCount()I
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->getAccessPointsCount(Landroid/preference/PreferenceScreen;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasSimProblem()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mP2pSupported:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v7, Lcom/android/settingsstock/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settingsstock/wifi/WifiSettings$5;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v7, Lcom/android/settingsstock/wifi/WifiSettings$6;

    invoke-direct {v7, p0}, Lcom/android/settingsstock/wifi/WifiSettings$6;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v7, Lcom/android/settingsstock/wifi/WifiSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settingsstock/wifi/WifiSettings$7;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDlgEdit:Z

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "wifi_auto_finish_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    iget-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mEnableNextOnConnection:Z

    iget-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settingsstock/wifi/WifiSettings;->changeNextButtonState(Z)V

    :cond_3
    iget-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1e4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "access_points_and_gprs"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_9

    const v7, 0x7f05004a

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/wifi/WifiSettings;->addPreferencesFromResource(I)V

    :goto_1
    const-string v7, "trust_access_points"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mTrustAPCategory:Landroid/preference/PreferenceCategory;

    const-string v7, "configed_access_points"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConfigedAPCategory:Landroid/preference/PreferenceCategory;

    const-string v7, "new_access_points"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mNewAPCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    iget-object v8, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mTrustAPCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConfigedAPCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mNewAPCategory:Landroid/preference/PreferenceCategory;

    invoke-interface {v7, v8, v9, v10}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->setCategory(Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->emptyScreen(Landroid/preference/PreferenceScreen;)V

    iget-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_7

    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_6

    move-object v6, v1

    check-cast v6, Landroid/preference/PreferenceActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v5, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const v11, 0x800015

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_6
    new-instance v7, Lcom/android/settingsstock/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/settingsstock/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

    :cond_7
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_8

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    :cond_8
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->registerPriorityObserver(Landroid/content/ContentResolver;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    const v7, 0x7f05004f

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1
.end method

.method onAddNetworkPressed()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(Lcom/android/settingsstock/wifi/AccessPoint;Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->forget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiDialog;->getController()Lcom/android/settingsstock/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiSettings;->submit(Lcom/android/settingsstock/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiDialog;->closeSpinnerDialog()V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(Lcom/android/settingsstock/wifi/AccessPoint;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(Lcom/android/settingsstock/wifi/AccessPoint;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    invoke-interface {v1, v2}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->disconnect(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSetupWizardMode:Z

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->getWifiSettingsPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IWifiSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0436

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    instance-of v1, v0, Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/settingsstock/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    const v2, 0x7f0b044e

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v1}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->shouldAddDisconnectMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    const v2, 0x7f0b012e

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    invoke-interface {v1, v2, v3}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->shouldAddForgetMenu(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    const v2, 0x7f0b044f

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    const/16 v1, 0x9

    const v2, 0x7f0b0450

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f0b0494

    const v4, 0x7f0b0493

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    :cond_0
    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-interface {v1, v2}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->recordPriority(I)V

    :goto_1
    new-instance v1, Lcom/android/settingsstock/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settingsstock/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settingsstock/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->recordPriority(I)V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/android/settingsstock/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/android/settingsstock/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/android/settingsstock/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/settingsstock/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0495

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settingsstock/wifi/WifiSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/wifi/WifiSettings$9;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settingsstock/wifi/WifiSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/wifi/WifiSettings$8;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0496

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settingsstock/wifi/WifiSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/wifi/WifiSettings$11;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settingsstock/wifi/WifiSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/wifi/WifiSettings$10;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11

    const/16 v10, 0x4b

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iget-boolean v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0b0448

    invoke-interface {p1, v7, v6, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200ae

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v5, 0x7f0b0446

    invoke-interface {p1, v7, v9, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    const v5, 0x7f0b0448

    invoke-interface {p1, v7, v6, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f0200ae

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v5, 0x7f0b0446

    invoke-interface {p1, v7, v9, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v5, 0x7f020067

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_3

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/16 v5, 0xff

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    :goto_1
    const/4 v5, 0x6

    const v6, 0x7f0b044c

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v5, 0x7f0b044a

    invoke-interface {p1, v7, v8, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    const v6, 0x7f0b044b

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    const/4 v5, 0x5

    const v6, 0x7f0b044d

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v5, :cond_3

    const v5, 0x7f04008f

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f08017d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/android/settingsstock/wifi/WifiSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settingsstock/wifi/WifiSettings$2;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f08017b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    new-instance v5, Lcom/android/settingsstock/wifi/WifiSettings$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/settingsstock/wifi/WifiSettings$3;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "wifi_show_custom_button"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f080180

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f080181

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f080031

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f080029

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f080182

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v5, Lcom/android/settingsstock/wifi/WifiSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settingsstock/wifi/WifiSettings$4;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const-string v5, "wifi_show_wifi_required_info"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f08017c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-object v4

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->unregisterPriorityObserver(Landroid/content/ContentResolver;)V

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04ad

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settingsstock/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_1
    move v0, v7

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_2
    move v0, v7

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settingsstock/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0498

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v0, v7

    goto :goto_0

    :cond_3
    const-class v0, Lcom/android/settingsstock/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settingsstock/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiEnabler;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->pause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    instance-of v1, p2, Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v1, :cond_2

    check-cast p2, Lcom/android/settingsstock/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/AccessPoint;->isOpenApWPSSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(Lcom/android/settingsstock/wifi/AccessPoint;Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settingsstock/wifi/WifiSettings;->showDialog(Lcom/android/settingsstock/wifi/AccessPoint;Z)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiEnabler;->resume()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v0, v3, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_1
    iput v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mKeyStoreNetworkId:I

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDialog:Lcom/android/settingsstock/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->pause()V

    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->resume()V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->emptyCategory(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->resume()V

    :cond_0
    return-void
.end method

.method submit(Lcom/android/settingsstock/wifi/WifiConfigController;)V
    .locals 13

    const v12, 0x7f0b0122

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/android/settingsstock/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eap: SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eap: AKA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b0122

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v7, "\"error\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b0123

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "submit exception() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_a

    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectedAccessPoint "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    const-string v6, "WifiSettings"

    const-string v7, "onClick() >>if ((mConfig.SSID).equals(mSelectedAccessPoint.ssid)) {"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiDialog;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eap: SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eap: AKA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    const-string v6, "WifiSettings"

    const-string v7, "remind user: cannot user eap-sim/aka under airplane mode"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v7, "\"none\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b0124

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settingsstock/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    if-eq v6, v10, :cond_7

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingsstock/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-nez v5, :cond_9

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    iget-object v8, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    iput-boolean v9, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mManuallyConnect:Z

    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v6, v0}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mScanner:Lcom/android/settingsstock/wifi/WifiSettings$Scanner;

    invoke-virtual {v6}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->resume()V

    :cond_8
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    invoke-interface {v6, v7}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->disconnect(I)V

    goto :goto_1

    :cond_a
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v10, :cond_b

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v6, v0}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->setNewPriority(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    :cond_b
    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mExt:Lcom/android/settingsstock/ext/IWifiSettingsExt;

    invoke-interface {v6, v0}, Lcom/android/settingsstock/ext/IWifiSettingsExt;->updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {p1}, Lcom/android/settingsstock/wifi/WifiConfigController;->isEdit()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    :cond_d
    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iput-boolean v9, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_1
.end method

.method public updateAP(Landroid/preference/PreferenceCategory;)V
    .locals 5

    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settingsstock/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
