.class Lcom/android/settingsstock/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/wifi/AccessPoint$1;,
        Lcom/android/settingsstock/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_DETAILEDSTATE:Ljava/lang/String; = "key_detailedstate"

.field private static final KEY_PROP_OPEN_AP_WPS:Ljava/lang/String; = "mediatek.wlan.openap.wps"

.field private static final KEY_PROP_WFA_TEST_SUPPORT:Ljava/lang/String; = "persist.radio.wifi.wpa2wpaalone"

.field private static final KEY_PROP_WFA_TEST_VALUE:Ljava/lang/String; = "true"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field static final SECURITY_EAP:I = 0x5

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WAPI_CERT:I = 0x7

.field static final SECURITY_WAPI_PSK:I = 0x6

.field static final SECURITY_WEP:I = 0x1

.field static final SECURITY_WPA2_PSK:I = 0x4

.field static final SECURITY_WPA_PSK:I = 0x3

.field private static final STATE_NONE:[I = null

.field private static final STATE_SECURED:[I = null

.field static final TAG:Ljava/lang/String; = "Settings.AccessPoint"

.field static sExt:Lcom/android/settingsstock/ext/IWifiExt;

.field private static sWFATestFlag:Ljava/lang/String;


# instance fields
.field bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field networkId:I

.field pskType:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v3, Lcom/android/settingsstock/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->STATE_SECURED:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->STATE_NONE:[I

    sput-object v3, Lcom/android/settingsstock/wifi/AccessPoint;->sExt:Lcom/android/settingsstock/ext/IWifiExt;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->wpsAvailable:Z

    sget-object v0, Lcom/android/settingsstock/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->pskType:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    invoke-direct {p0, p2}, Lcom/android/settingsstock/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->refresh()V

    sget-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->sExt:Lcom/android/settingsstock/ext/IWifiExt;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IWifiExt;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->sExt:Lcom/android/settingsstock/ext/IWifiExt;

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->wpsAvailable:Z

    sget-object v0, Lcom/android/settingsstock/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->pskType:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    invoke-direct {p0, p2}, Lcom/android/settingsstock/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->refresh()V

    sget-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->sExt:Lcom/android/settingsstock/ext/IWifiExt;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IWifiExt;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->sExt:Lcom/android/settingsstock/ext/IWifiExt;

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->wpsAvailable:Z

    sget-object v0, Lcom/android/settingsstock/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->pskType:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    sget-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->sExt:Lcom/android/settingsstock/ext/IWifiExt;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IWifiExt;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->sExt:Lcom/android/settingsstock/ext/IWifiExt;

    :cond_3
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settingsstock/wifi/AccessPoint$PskType;
    .locals 5

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/settingsstock/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    :goto_0
    return-object v2

    :cond_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/settingsstock/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/settingsstock/wifi/AccessPoint$PskType;->WPA:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    goto :goto_0

    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settingsstock/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v2, :cond_6

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isWFATestSupported()Z
    .locals 3

    sget-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "persist.radio.wifi.wpa2wpaalone"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    const-string v0, "Settings.AccessPoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWFATestSupported(), sWFATestFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "true"

    sget-object v1, Lcom/android/settingsstock/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingsstock/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    iput-object p1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingsstock/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingsstock/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    iget v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->wpsAvailable:Z

    iget v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/settingsstock/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->pskType:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    iput-object p1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/settingsstock/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    const v3, 0x7f0b047a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v3, 0x7f0b0477

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const v3, 0x7f0b0479

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const v3, 0x7f0b0478

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    const v3, 0x7f0b0476

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_6

    const v3, 0x7f0b047d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7

    const v3, 0x7f0b047b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    const v3, 0x7f0b047e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    const v3, 0x7f0b047c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static resetWFAFlag()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingsstock/wifi/AccessPoint;->sWFATestFlag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 10

    const/4 v4, 0x1

    const/4 v3, -0x1

    instance-of v5, p1, Lcom/android/settingsstock/wifi/AccessPoint;

    if-nez v5, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, v2, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/settingsstock/wifi/AccessPoint;->sExt:Lcom/android/settingsstock/ext/IWifiExt;

    iget-object v6, p0, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget v7, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    iget-object v8, v2, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget v9, v2, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/settingsstock/ext/IWifiExt;->getApOrder(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    iget v6, v2, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v5, v6

    if-gez v5, :cond_4

    iget v5, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    iget v6, v2, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    xor-int/2addr v5, v6

    if-gez v5, :cond_5

    iget v5, p0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    if-ne v5, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_5
    iget v3, v2, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    iget v4, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-eqz v0, :cond_6

    move v3, v0

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    iget v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingsstock/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    iget v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    :pswitch_1
    if-eqz p1, :cond_0

    const v1, 0x7f0b0484

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b048b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/settingsstock/wifi/AccessPoint$1;->$SwitchMap$com$android$settingsstock$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/settingsstock/wifi/AccessPoint;->pskType:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/settingsstock/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    if-eqz p1, :cond_4

    const v1, 0x7f0b0483

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_1

    const v1, 0x7f0b0480

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0487

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_2

    const v1, 0x7f0b0481

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0488

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    if-eqz p1, :cond_3

    const v1, 0x7f0b0482

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0b0489

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const v1, 0x7f0b048a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    if-eqz p1, :cond_5

    const v1, 0x7f0b047f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0b0486

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_8
    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0b0485

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public isOpenApWPSSupported()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v1, :cond_0

    const-string v1, "true"

    const-string v2, "mediatek.wlan.openap.wps"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f080138

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settingsstock/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settingsstock/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    iput-object p1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iput-object p2, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->refresh()V

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->notifyHierarchyChanged()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iput-object v3, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settingsstock/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->getLevel()I

    move-result v0

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->mRssi:I

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->notifyChanged()V

    :cond_0
    iget v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/android/settingsstock/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/wifi/AccessPoint;->pskType:Lcom/android/settingsstock/wifi/AccessPoint$PskType;

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/AccessPoint;->refresh()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
