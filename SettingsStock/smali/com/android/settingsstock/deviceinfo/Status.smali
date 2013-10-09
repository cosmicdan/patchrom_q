.class public Lcom/android/settingsstock/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_ICC_ID:Ljava/lang/String; = "icc_id"

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final KEY_IMEI_SV:Ljava/lang/String; = "imei_sv"

.field private static final KEY_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"

.field private static final KEY_MEID_NUMBER:Ljava/lang/String; = "meid_number"

.field private static final KEY_MIN_NUMBER:Ljava/lang/String; = "min_number"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_PRL_VERSION:Ljava/lang/String; = "prl_version"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field private static final KEY_WIMAX_MAC_ADDRESS:Ljava/lang/String; = "wimax_mac_address"

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeviceInfoStatus"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mExt:Lcom/android/settingsstock/ext/IStatusExt;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceState:I

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSignalStrengthListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;

.field private sUnknown:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingsstock/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/Status$1;-><init>(Lcom/android/settingsstock/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/Status$2;-><init>(Lcom/android/settingsstock/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/Status$3;-><init>(Lcom/android/settingsstock/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mSignalStrengthListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/Status$4;-><init>(Lcom/android/settingsstock/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/deviceinfo/Status;)Lcom/android/settingsstock/ext/IStatusExt;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mExt:Lcom/android/settingsstock/ext/IStatusExt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/deviceinfo/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settingsstock/deviceinfo/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settingsstock/deviceinfo/Status;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mServiceState:I

    return p1
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v5, 0x3c

    rem-long v3, p1, v5

    long-to-int v2, v3

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settingsstock/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const v3, 0x7f0b055f

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settingsstock/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0b055f

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/android/settingsstock/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v4, 0x7f0b055f

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0b055f

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataState()V
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b028b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0288

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0287

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 3

    const-string v0, "network_type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 7

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b028b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch v3, :pswitch_data_0

    :goto_0
    const-string v4, "service_state"

    invoke-direct {p0, v4, v0}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0282

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v4, "operator_name"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b026a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mExt:Lcom/android/settingsstock/ext/IStatusExt;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/settingsstock/ext/IStatusExt;->updateServiceState(Landroid/preference/Preference;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b027e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b027f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b0281

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0283

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settingsstock/Utils;->getStatusExtPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IStatusExt;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mExt:Lcom/android/settingsstock/ext/IStatusExt;

    new-instance v7, Lcom/android/settingsstock/deviceinfo/Status$MyHandler;

    invoke-direct {v7, p0}, Lcom/android/settingsstock/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settingsstock/deviceinfo/Status;)V

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v7, 0x7f050014

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->addPreferencesFromResource(I)V

    const-string v7, "battery_level"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    const-string v7, "battery_status"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0b026a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    const-string v7, "signal_strength"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v7, "up_time"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    sget-object v0, Lcom/android/settingsstock/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/settingsstock/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "meid_number"

    iget-object v8, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "min_number"

    iget-object v8, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "min_number"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const v8, 0x7f0b0552

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    :cond_3
    const-string v7, "prl_version"

    iget-object v8, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "imei_sv"

    invoke-direct {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    const-string v7, "icc_id"

    iget-object v8, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v7, "number"

    invoke-direct {p0, v7, v1}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v8, p0, Lcom/android/settingsstock/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v8, 0xc8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    iget-object v7, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v8, 0x12c

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Status;->setWimaxStatus()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Status;->setWifiStatus()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Status;->setBtStatus()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Status;->setIpAddressStatus()V

    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v6, :cond_8

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "serial_number"

    invoke-direct {p0, v7, v6}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_6
    const-string v7, "imei"

    invoke-direct {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "imei_sv"

    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v8, v7}, Lcom/android/settingsstock/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "prl_version"

    invoke-direct {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v7, "meid_number"

    invoke-direct {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v7, "min_number"

    invoke-direct {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v7, "serial_number"

    invoke-direct {p0, v7}, Lcom/android/settingsstock/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->updateSignalStrength()V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Status;->updateDataState()V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mSignalStrengthListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mExt:Lcom/android/settingsstock/ext/IStatusExt;

    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-interface {v1, v0, v2}, Lcom/android/settingsstock/ext/IStatusExt;->addAction(Landroid/content/IntentFilter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method updateSignalStrength()V
    .locals 8

    const/4 v7, -0x1

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    const-string v4, "DeviceInfoStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSignalStrength() signalDbm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v7, v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    const-string v4, "DeviceInfoStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSignalStrength() signalAsu : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v7, v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b028e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b028f

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method updateTimes()V
    .locals 8

    const-wide/16 v6, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
