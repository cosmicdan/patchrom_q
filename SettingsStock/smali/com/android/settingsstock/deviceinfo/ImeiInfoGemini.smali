.class public Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;
.super Landroid/preference/PreferenceActivity;
.source "ImeiInfoGemini.java"


# static fields
.field private static final CDMA:Ljava/lang/String; = "CDMA"

.field private static final KEY_IMEI_SLOT1:Ljava/lang/String; = "imei_slot1"

.field private static final KEY_IMEI_SLOT2:Ljava/lang/String; = "imei_slot2"

.field private static final KEY_IMEI_SV_SLOT1:Ljava/lang/String; = "imei_sv_slot1"

.field private static final KEY_IMEI_SV_SLOT2:Ljava/lang/String; = "imei_sv_slot2"

.field private static final KEY_MEID_NUMBER_SLOT1:Ljava/lang/String; = "meid_number_slot1"

.field private static final KEY_MEID_NUMBER_SLOT2:Ljava/lang/String; = "meid_number_slot2"

.field private static final KEY_MIN_NUMBER_SLOT1:Ljava/lang/String; = "min_number_slot1"

.field private static final KEY_PRL_MIN_NUMBER_SLOT2:Ljava/lang/String; = "min_number_slot2"

.field private static final KEY_PRL_VERSION_SLOT1:Ljava/lang/String; = "prl_version_slot1"

.field private static final KEY_PRL_VERSION_SLOT2:Ljava/lang/String; = "prl_version_slot2"

.field private static final KEY_SLOT_STATUS:Ljava/lang/String; = "slot_status"


# instance fields
.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-void
.end method

.method private setSlotStatus()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneNameGemini(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "meid_number_slot1"

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMeidGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "min_number_slot1"

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaMinGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "prl_version_slot1"

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaPrlVersionGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imei_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "imei_sv_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneNameGemini(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "meid_number_slot2"

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getMeidGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "min_number_slot2"

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaMinGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "prl_version_slot2"

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCdmaPrlVersionGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imei_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "imei_sv_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    return-void

    :cond_0
    const-string v2, "imei_slot1"

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imei_sv_slot1"

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "prl_version_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "meid_number_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "min_number_slot1"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    const-string v2, "imei_slot2"

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imei_sv_slot2"

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "prl_version_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "meid_number_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "min_number_slot2"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/ImeiInfoGemini;->setSlotStatus()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method
