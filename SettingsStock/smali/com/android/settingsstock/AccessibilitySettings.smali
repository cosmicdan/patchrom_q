.class public Lcom/android/settingsstock/AccessibilitySettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settingsstock/DialogCreatable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;,
        Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;,
        Lcom/android/settingsstock/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;,
        Lcom/android/settingsstock/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;,
        Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;,
        Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;,
        Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREENREADER_MARKET_LINK:Ljava/lang/String; = "market://search?q=pname:com.google.android.marvin.talkback"

.field private static final DELAY_UPDATE_SERVICES_MILLIS:J = 0x3e8L

.field private static final DIALOG_ID_NO_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final DISPLAY_MAGNIFICATION_PREFERENCE_SCREEN:Ljava/lang/String; = "screen_magnification_preference_screen"

.field private static final ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR:C = ':'

.field private static final EXTRA_CHECKED:Ljava/lang/String; = "checked"

.field private static final EXTRA_DISABLE_WARNING_MESSAGE:Ljava/lang/String; = "disable_warning_message"

.field private static final EXTRA_DISABLE_WARNING_TITLE:Ljava/lang/String; = "disable_warning_title"

.field private static final EXTRA_ENABLE_WARNING_MESSAGE:Ljava/lang/String; = "enable_warning_message"

.field private static final EXTRA_ENABLE_WARNING_TITLE:Ljava/lang/String; = "enable_warning_title"

.field private static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field private static final EXTRA_SERVICE_COMPONENT_NAME:Ljava/lang/String; = "service_component_name"

.field private static final EXTRA_SETTINGS_COMPONENT_NAME:Ljava/lang/String; = "settings_component_name"

.field private static final EXTRA_SETTINGS_TITLE:Ljava/lang/String; = "settings_title"

.field private static final EXTRA_SUMMARY:Ljava/lang/String; = "summary"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final IPO_SETTING:Ljava/lang/String; = "ipo_setting"

.field private static final KEY_INSTALL_ACCESSIBILITY_SERVICE_OFFERED_ONCE:Ljava/lang/String; = "key_install_accessibility_service_offered_once"

.field private static final LARGE_FONT_SCALE_PHONE:F = 1.15f

.field private static final LARGE_FONT_SCALE_TABLET:F = 1.03f

.field private static final SELECT_LONG_PRESS_TIMEOUT_PREFERENCE:Ljava/lang/String; = "select_long_press_timeout_preference"

.field private static final SERVICES_CATEGORY:Ljava/lang/String; = "services_category"

.field private static final SYSTEM_CATEGORY:Ljava/lang/String; = "system_category"

.field private static final SYSTEM_PROPERTY_MARKET_URL:Ljava/lang/String; = "ro.screenreader.market"

.field private static final TAG:Ljava/lang/String; = "AccessibilitySettings"

.field private static final TOGGLE_LARGE_TEXT_PREFERENCE:Ljava/lang/String; = "toggle_large_text_preference"

.field private static final TOGGLE_LOCK_SCREEN_ROTATION_PREFERENCE:Ljava/lang/String; = "toggle_lock_screen_rotation_preference"

.field private static final TOGGLE_POWER_BUTTON_ENDS_CALL_PREFERENCE:Ljava/lang/String; = "toggle_power_button_ends_call_preference"

.field private static final TOGGLE_SCRIPT_INJECTION_PREFERENCE:Ljava/lang/String; = "toggle_script_injection_preference"

.field private static final TOGGLE_SPEAK_PASSWORD_PREFERENCE:Ljava/lang/String; = "toggle_speak_password_preference"

.field private static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private isScreenLarge:Z

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mIpoSetting:Landroid/preference/CheckBoxPreference;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mRotationObserver:Landroid/database/ContentObserver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleScriptInjectionPreference:Lcom/android/settingsstock/AccessibilityEnableScriptInjectionPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settingsstock/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settingsstock/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settingsstock/AccessibilitySettings;Lcom/android/settingsstock/AccessibilitySettings$1;)V

    iput-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/settingsstock/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/AccessibilitySettings$1;-><init>(Lcom/android/settingsstock/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/AccessibilitySettings$2;

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/AccessibilitySettings$2;-><init>(Lcom/android/settingsstock/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;

    new-instance v0, Lcom/android/settingsstock/AccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/AccessibilitySettings$3;-><init>(Lcom/android/settingsstock/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->isScreenLarge:Z

    new-instance v0, Lcom/android/settingsstock/AccessibilitySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/AccessibilitySettings$4;-><init>(Lcom/android/settingsstock/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingsstock/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingsstock/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->updateRotationCheckbox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingsstock/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;)Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-object v0
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/android/settingsstock/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "title"

    const v4, 0x7f0b0734

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "summary"

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0735

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 5

    const/high16 v4, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_fontsize_extralarge"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    cmpl-float v2, v0, v4

    if-nez v2, :cond_3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/settingsstock/AccessibilitySettings;->isScreenLarge:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x3f83d70a

    :cond_0
    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x3f933333

    :cond_2
    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    iput v0, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 7

    const-string v4, "services_category"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    const-string v4, "system_category"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    const-string v4, "toggle_large_text_preference"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    const-string v4, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    const/16 v4, 0x1a

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingsstock/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settingsstock/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v4, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    const-string v4, "toggle_speak_password_preference"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    const-string v4, "select_long_press_timeout_preference"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v5, v3, v0

    aget-object v6, v1, v0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "toggle_script_injection_preference"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settingsstock/AccessibilityEnableScriptInjectionPreference;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/settingsstock/AccessibilityEnableScriptInjectionPreference;

    const-string v4, "screen_magnification_preference_screen"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v4, "ipo_setting"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings;->mIpoSetting:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method private loadInstalledServices()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/android/settingsstock/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settingsstock/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v7, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v7, "key_install_accessibility_service_offered_once"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    :goto_1
    if-eqz v2, :cond_0

    const-string v7, "ro.screenreader.market"

    const-string v8, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_install_accessibility_service_offered_once"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/AccessibilitySettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->updateServicesPreferences()V

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->updateSystemPreferences()V

    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRotationCheckbox()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private updateServicesPreferences()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "accessibility_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    const/4 v11, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    if-ge v11, v7, :cond_5

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v14

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_3

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v15, 0x1

    :goto_2
    if-eqz v15, :cond_4

    const v19, 0x7f0b0743

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v14, v11}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    const-class v19, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v19, "preference_key"

    invoke-virtual {v14}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "checked"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v19, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    const v19, 0x7f0b0751

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    const-string v19, "summary"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v19, "enable_warning_title"

    const v20, 0x7f0b0749

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "enable_warning_message"

    const v20, 0x7f0b074a

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "disable_warning_title"

    const v20, 0x7f0b074b

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "disable_warning_message"

    const v20, 0x7f0b074c

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "settings_title"

    const v20, 0x7f0b0742

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "settings_component_name"

    new-instance v20, Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v19, "service_component_name"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_4
    const v19, 0x7f0b0744

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    new-instance v19, Lcom/android/settingsstock/AccessibilitySettings$5;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/AccessibilitySettings$5;-><init>(Lcom/android/settingsstock/AccessibilitySettings;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setPersistent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const v20, 0x7f040091

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setLayoutResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSelectable(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_7
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 14

    const/high16 v13, -0x4080

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "settings_fontsize_extralarge"

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v7

    :try_start_0
    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    cmpl-float v9, v7, v13

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->isScreenLarge:Z

    if-eqz v9, :cond_3

    iget-object v12, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    const v13, 0x3f83d70a

    cmpl-float v9, v9, v13

    if-nez v9, :cond_2

    move v9, v10

    :goto_1
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_2
    const/16 v9, 0x1a

    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settingsstock/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "incall_power_button_behavior"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_7

    move v4, v10

    :goto_3
    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->updateRotationCheckbox()V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "speak_password"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    move v6, v10

    :goto_4
    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "long_press_timeout"

    iget v13, p0, Lcom/android/settingsstock/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v12, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "accessibility_script_injection"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_9

    move v5, v10

    :goto_5
    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/settingsstock/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v9, v5}, Lcom/android/settingsstock/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "accessibility_display_magnification_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_a

    move v3, v10

    :goto_6
    if-eqz v3, :cond_b

    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0b0743

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_7
    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "ipo_setting"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_c

    move v1, v10

    :goto_8
    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mIpoSetting:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mIpoSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    move v9, v11

    goto/16 :goto_1

    :cond_3
    iget-object v12, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    const v13, 0x3f933333

    cmpl-float v9, v9, v13

    if-nez v9, :cond_4

    move v9, v10

    :goto_9
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_4
    move v9, v11

    goto :goto_9

    :cond_5
    iget-object v12, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v9, v9, v7

    if-nez v9, :cond_6

    move v9, v10

    :goto_a
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_6
    move v9, v11

    goto :goto_a

    :cond_7
    move v4, v11

    goto/16 :goto_3

    :cond_8
    move v6, v11

    goto/16 :goto_4

    :cond_9
    move v5, v11

    goto :goto_5

    :cond_a
    move v3, v11

    goto :goto_6

    :cond_b
    iget-object v9, p0, Lcom/android/settingsstock/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0b0744

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_7

    :cond_c
    move v1, v11

    goto :goto_8

    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->isScreenLarge:Z

    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/AccessibilitySettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->initializeAllPreferences()V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b074e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b074f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settingsstock/AccessibilitySettings$6;

    invoke-direct {v3, p0}, Lcom/android/settingsstock/AccessibilitySettings$6;-><init>(Lcom/android/settingsstock/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    :goto_0
    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_2

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_3

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_4

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mIpoSetting:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_6

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ipo_setting"

    if-eqz v0, :cond_5

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->loadInstalledServices()V

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->updateAllPreferences()V

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
