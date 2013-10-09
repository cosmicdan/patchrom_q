.class public Lcom/android/settingsstock/deviceinfo/StatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "StatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/deviceinfo/StatusGemini$MyHandler;
    }
.end annotation


# static fields
.field private static final CDMA:Ljava/lang/String; = "CDMA"

.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final KEY_SIM_STATUS:Ljava/lang/String; = "sim_status"

.field private static final KEY_SLOT_STATUS:Ljava/lang/String; = "slot_status"

.field private static final KEY_UP_TIME:Ljava/lang/String; = "up_time"

.field private static final KEY_WIFI_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"

.field private static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field private static final KEY_WIMAX_MAC_ADDRESS:Ljava/lang/String; = "wimax_mac_address"

.field private static final TAG:Ljava/lang/String; = "Gemini_Aboutphone"

.field private static final WIMAX_ADDRESS:Ljava/lang/String; = "net.wimax.mac.address"

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field mExt:Lcom/android/settingsstock/ext/IStatusGeminiExt;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mRes:Landroid/content/res/Resources;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;-><init>(Lcom/android/settingsstock/deviceinfo/StatusGemini;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/deviceinfo/StatusGemini;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/deviceinfo/StatusGemini;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
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

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->pad(I)Ljava/lang/String;

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

.method private setBtStatus()V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const v3, 0x7f0b055f

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setSimListEntrance()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "sim_status"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mExt:Lcom/android/settingsstock/ext/IStatusGeminiExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/settingsstock/ext/IStatusGeminiExt;->initUI(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    if-eqz v3, :cond_0

    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const-string v4, "Gemini_Aboutphone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim num "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v7, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settingsstock"

    const-string v5, "com.android.settingsstock.deviceinfo.SimStatusGemini"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "slotid"

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v4, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-le v1, v7, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settingsstock.SIM_LIST_ENTRANCE_ACTIVITY"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "title"

    invoke-virtual {v3}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v4, "type"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v2, "Gemini_Aboutphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b026a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v2, "slot_status"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "Gemini_Aboutphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot_status not find preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setWifiStatus()V
    .locals 8

    const v7, 0x7f0b055f

    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    :cond_0
    const-string v6, "wifi_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {p0}, Lcom/android/settingsstock/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setWimaxStatus()V
    .locals 8

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0b055f

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f050015

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->addPreferencesFromResource(I)V

    const-string v6, "Gemini_Aboutphone"

    const-string v8, "Enter StatusGemini onCreate function."

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settingsstock/Utils;->getStatusGeminiExtPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IStatusGeminiExt;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mExt:Lcom/android/settingsstock/ext/IStatusGeminiExt;

    new-instance v6, Lcom/android/settingsstock/deviceinfo/StatusGemini$MyHandler;

    invoke-direct {v6, p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini$MyHandler;-><init>(Lcom/android/settingsstock/deviceinfo/StatusGemini;)V

    iput-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v6, "battery_level"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mBatteryLevel:Landroid/preference/Preference;

    const-string v6, "battery_status"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mBatteryStatus:Landroid/preference/Preference;

    const-string v6, "up_time"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mUptime:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mRes:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0b026a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/settingsstock/deviceinfo/StatusGemini;->sUnknown:Ljava/lang/String;

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v2, 0x1

    :goto_0
    const-string v6, "Gemini_Aboutphone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sIsWifiOnly="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->setSimListEntrance()V

    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "serial_number"

    invoke-direct {p0, v6, v3}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->setWimaxStatus()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->setWifiStatus()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->setBtStatus()V

    return-void

    :cond_2
    move v2, v7

    goto :goto_0

    :cond_3
    const-string v6, "serial_number"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_4
    const-string v6, "sim_status"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v6, "slot_status"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
