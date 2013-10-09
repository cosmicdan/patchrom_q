.class public Lcom/android/settingsstock/wifi/WifiApEnabler;
.super Landroid/app/Fragment;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final INVALID:I = -0x1

.field private static final PROVISION_REQUEST:I = 0x0

.field static final TAG:Ljava/lang/String; = "WifiApEnabler"

.field private static final WIFI_IPV4:I = 0xf

.field private static final WIFI_IPV6:I = 0xf0

.field private static final WIFI_SWITCH_SETTINGS:Ljava/lang/String; = "wifi_tether_settings"

.field private static final WIFI_TETHERING:I


# instance fields
.field private mBandwidthPre:Landroid/preference/Preference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field mExt:Lcom/android/settingsstock/ext/IWifiExt;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

.field private mTetherChoice:I

.field private mTetherSettings:Lcom/android/settingsstock/TetherSettings;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWpsConnectPre:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mTetherChoice:I

    new-instance v0, Lcom/android/settingsstock/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/wifi/WifiApEnabler$1;-><init>(Lcom/android/settingsstock/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWpsConnectPre:Landroid/preference/Preference;

    iput-object p4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mBandwidthPre:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mTetherChoice:I

    new-instance v0, Lcom/android/settingsstock/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/wifi/WifiApEnabler$1;-><init>(Lcom/android/settingsstock/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/wifi/WifiApEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingsstock/wifi/WifiApEnabler;->updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/wifi/WifiApEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->enableWifiCheckBox()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setPreferenceState(Z)V

    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setStartTime(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v1, 0x7f0b04be

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setPreferenceState(Z)V

    invoke-direct {p0, v1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setStartTime(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setPreferenceState(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    const-string v0, "WifiApEnabler"

    const-string v1, "wifi_stopping"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v1, 0x7f0b04bf

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setPreferenceState(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPreferenceState(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mBandwidthPre:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settingsstock/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "WifiApEnabler"

    const-string v2, "security is wpa psk, disable wps connect preference"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWpsConnectPre:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setStartTime(Z)V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    if-eqz p1, :cond_1

    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v4, "WifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    const-string v4, "WifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mStateMachineEvent:Z

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mStateMachineEvent:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setSwitchEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5

    const/4 v4, 0x0

    iput p1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mTetherChoice:I

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v1, "WifiApEnabler"

    const-string v2, "startProvisioningIfNecessary, startActivityForResult"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 2

    iget v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mTetherChoice:I

    if-nez v0, :cond_0

    const-string v0, "WifiApEnabler"

    const-string v1, "startTethering, setSoftapEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_5
    if-eqz v11, :cond_7

    iget-object v12, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settingsstock/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    if-eqz v10, :cond_6

    iget-object v12, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v13, 0x7f0b043b

    invoke-virtual {v12, v13}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(I)V

    goto :goto_4
.end method

.method private updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 19

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x10

    move-object/from16 v1, p1

    array-length v5, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v1, v4

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v6, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v2, v3

    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    and-int/lit8 v12, v16, 0xf

    :cond_0
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v13, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v13, v0, 0xf0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_3
    move-object/from16 v1, p2

    array-length v5, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v7, v1, v4

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v6, v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_5

    aget-object v8, v2, v3

    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v15, 0x1

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v13, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v13, v0, 0xf0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    :cond_6
    move-object/from16 v1, p3

    array-length v5, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_4
    if-ge v4, v5, :cond_9

    aget-object v7, v1, v4

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    array-length v6, v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v6, :cond_8

    aget-object v8, v2, v3

    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    const/4 v14, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_4

    :cond_9
    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settingsstock/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x1040410

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0b04c0

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    if-nez v11, :cond_b

    :goto_6
    aput-object v9, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mTetherSettings:Lcom/android/settingsstock/TetherSettings;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mTetherSettings:Lcom/android/settingsstock/TetherSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/android/settingsstock/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_7
    return-void

    :cond_b
    iget-object v9, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    :cond_c
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    move-object/from16 v16, v0

    const v17, 0x7f0b043b

    invoke-virtual/range {v16 .. v17}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(I)V

    goto :goto_7
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    return-void
.end method

.method isProvisioningNeeded()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->startTethering()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged, isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settingsstock/wifi/WifiApEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_tether_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange, isChecked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settingsstock/wifi/WifiApEnabler;->startProvisioningIfNecessary(I)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->enableWifiCheckBox()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public setSoftapEnabled(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eqz p1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v6}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-ne v2, v7, :cond_3

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v5, 0x7f0b043b

    invoke-virtual {v4, v5}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "WifiApEnabler"

    const-string v5, "SettingNotFoundException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setTetherSettings(Lcom/android/settingsstock/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mTetherSettings:Lcom/android/settingsstock/TetherSettings;

    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    const-string v1, "wlan"

    const-string v2, "SSID"

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v4, 0x1040410

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b04c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
