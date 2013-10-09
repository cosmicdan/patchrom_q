.class public Lcom/android/settingsstock/net/DataUsageMeteredSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/net/DataUsageMeteredSettings$MeteredPreference;
    }
.end annotation


# static fields
.field private static final SHOW_MOBILE_CATEGORY:Z


# instance fields
.field private mMobileCategory:Landroid/preference/PreferenceCategory;

.field private mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mWifiCategory:Landroid/preference/PreferenceCategory;

.field private mWifiDisabled:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/net/DataUsageMeteredSettings;)Lcom/android/settingsstock/net/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    return-object v0
.end method

.method private buildMobilePref(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 4

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    new-instance v0, Lcom/android/settingsstock/net/DataUsageMeteredSettings$MeteredPreference;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/settingsstock/net/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settingsstock/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/net/DataUsageMeteredSettings$MeteredPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 4

    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    new-instance v1, Lcom/android/settingsstock/net/DataUsageMeteredSettings$MeteredPreference;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settingsstock/net/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settingsstock/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/net/DataUsageMeteredSettings$MeteredPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private updateNetworks(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-static {p1}, Lcom/android/settingsstock/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settingsstock/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settingsstock/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->read()V

    const v1, 0x7f05000c

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->addPreferencesFromResource(I)V

    const-string v1, "mobile"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "wifi_disabled"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/net/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    return-void
.end method
