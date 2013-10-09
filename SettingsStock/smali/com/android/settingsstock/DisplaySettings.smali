.class public Lcom/android/settingsstock/DisplaySettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final CONTACT_STRING:Ljava/lang/String; = "&"

.field public static final CURRENT_KEYGURAD_LAYER_KEY:Ljava/lang/String; = "mtk_current_keyguard_layer"

.field private static final DATA_STORE_NONE:Ljava/lang/String; = "none"

.field private static final DEFAULT_LOCK_SCREEN_NOTIFICATIONS:I = 0x1

.field private static final DISPLAY_DEFAULT:Ljava/lang/String; = "display_default"

.field private static final DISPLAY_PERSONALIZE:Ljava/lang/String; = "display_personalize"

.field private static final DLG_GLOBAL_CHANGE_WARNING:I = 0x1

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final INCOMING_INDICATOR_ON_LOCKSCREEN:Ljava/lang/String; = "incoming_indicator_on_lockscreen"

.field private static final KEY_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field private static final KEY_BUTTON_LIGHT:Ljava/lang/String; = "button_light"

.field private static final KEY_COLOR:Ljava/lang/String; = "color"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_HDMI_SETTINGS:Ljava/lang/String; = "hdmi_settings"

.field private static final KEY_LANDSCAPE_LAUNCHER:Ljava/lang/String; = "landscape_launcher"

.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_LOCK_SCREEN_STYLE:Ljava/lang/String; = "lock_screen_style"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_SCENES:Ljava/lang/String; = "scenes"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_TV_OUT:Ljava/lang/String; = "tvout_settings"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"

.field private static final LOCK_SCREEN_STYLE_INTENT_NAME:Ljava/lang/String; = "com.mediatek.lockscreensettings.LockScreenStyleSettings"

.field private static final LOCK_SCREEN_STYLE_INTENT_PACKAGE:Ljava/lang/String; = "com.android.settingsstock"

.field private static final PARSER_STRING_LENGTH_ONE:I = 0x1

.field private static final PARSER_STRING_LENGTH_TWO:I = 0x2

.field private static final PARSER_STRING_LENGTH_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mButtonLightPreference:Landroid/preference/ListPreference;

.field mColorPref:Landroid/preference/Preference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayDefCategory:Landroid/preference/PreferenceCategory;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayPerCategory:Landroid/preference/PreferenceCategory;

.field private mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

.field private mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

.field private mHDMISettings:Landroid/preference/Preference;

.field private mIsUpdateFont:Z

.field private mLandscapeLauncher:Landroid/preference/ListPreference;

.field private mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

.field private mLockScreenStylePref:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field mScencePref:Landroid/preference/Preference;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTVOut:Landroid/preference/Preference;

.field mWallpaperPref:Landroid/preference/Preference;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Lcom/android/settingsstock/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DisplaySettings$1;-><init>(Lcom/android/settingsstock/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    new-instance v0, Lcom/android/settingsstock/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/DisplaySettings$2;-><init>(Lcom/android/settingsstock/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settingsstock/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DisplaySettings$3;-><init>(Lcom/android/settingsstock/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/DisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DisplaySettings$5;-><init>(Lcom/android/settingsstock/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/DisplaySettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DisplaySettings;->updateTimeoutPreference(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateLandscapeList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingsstock/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateLockScreenStyle()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingsstock/DisplaySettings;)Lcom/android/settingsstock/WarnedListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settingsstock/DisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settingsstock/DisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateWifiDisplaySummary()V

    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    :goto_1
    return-void

    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private getButtonLightValue()I
    .locals 8

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_light"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getButtonLightValue()---currentValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mButtonLightPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    if-le v1, v3, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---bestMatch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private getTimoutValue()I
    .locals 8

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---currentValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    if-le v1, v3, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---bestMatch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private queryPluginKeyguardLayers()Z
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Landroid/content/pm/Signature;

    invoke-static {v9, v10, v11}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v6

    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getKeyguardLayers: pluginCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_1

    invoke-virtual {v4, v1}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-interface {v3}, Lcom/mediatek/common/policy/IKeyguardLayer;->getKeyguardLayerInfo()Lcom/mediatek/common/policy/KeyguardLayerInfo;

    move-result-object v2

    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getKeyguardLayers: i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",keyguardLayer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v7, 0x1

    move v8, v7

    :goto_1
    return v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPluginKeyguardLayers exception happens: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v8, v7

    goto :goto_1
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateButtonLightPreferenceDescription(J)V
    .locals 10

    iget-object v3, p0, Lcom/android/settingsstock/DisplaySettings;->mButtonLightPreference:Landroid/preference/ListPreference;

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    :cond_1
    const-string v4, ""

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_4

    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v8, p1, v5

    if-ltz v8, :cond_3

    move v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    array-length v8, v1

    if-eqz v8, :cond_5

    aget-object v8, v1, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    const-string v4, ""

    goto :goto_0
.end method

.method private updateFontSize(Landroid/preference/ListPreference;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, -0x4080

    const-string v4, "DisplaySettings"

    const-string v5, "update font size "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_small"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_large"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_extralarge"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size small = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size large = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size extraLarge = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v4, v2, v7

    if-nez v4, :cond_0

    cmpl-float v4, v1, v7

    if-nez v4, :cond_0

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_5

    :cond_0
    aget-object v4, v3, v8

    if-eqz v4, :cond_1

    cmpl-float v4, v2, v7

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aget-object v4, v3, v9

    if-eqz v4, :cond_2

    cmpl-float v4, v1, v7

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    aget-object v4, v3, v10

    if-eqz v4, :cond_3

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settingsstock/DisplaySettings;->mIsUpdateFont:Z

    :cond_5
    return-void
.end method

.method private updateLandscapeList()V
    .locals 15

    const/4 v14, 0x0

    const/4 v0, 0x0

    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.ROTATED_MAIN"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v7, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "DisplaySettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mLandscapeLauncherApps.size()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    add-int/lit8 v11, v0, 0x1

    new-array v1, v11, [Ljava/lang/CharSequence;

    add-int/lit8 v11, v0, 0x1

    new-array v2, v11, [Ljava/lang/CharSequence;

    const v11, 0x7f0b00b4

    invoke-virtual {p0, v11}, Lcom/android/settingsstock/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v14

    const-string v11, "none"

    aput-object v11, v2, v14

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "landscape_launcher"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "landscape_launcher"

    const-string v13, "none"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "none"

    :cond_1
    const/4 v4, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    const-string v11, "DisplaySettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resolve app : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v1, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v4

    aget-object v11, v2, v4

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v10, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v11, "DisplaySettings"

    const-string v12, "landscape launcher query return null or size 0 "

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "landscape_launcher"

    const-string v13, "none"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    return-void

    :cond_5
    if-nez v10, :cond_6

    const-string v11, "none"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "landscape_launcher"

    const-string v13, "none"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v11, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    aget-object v12, v1, v10

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateLockScreenStyle()V
    .locals 8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.settingsstock"

    const-string v6, "com.mediatek.lockscreensettings.LockScreenStyleSettings"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->queryPluginKeyguardLayers()Z

    move-result v1

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockScreenStyleApps.size()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mtk_current_keyguard_layer"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DisplaySettings;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockScreenStyleSummary = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    const v6, 0x7f0b00c2

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "DisplaySettings"

    const-string v6, "lock screen style query return null or size 0 "

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingsstock/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateScreenSaverSummary()V

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateWifiDisplaySummary()V

    return-void
.end method

.method private updateTimeoutPreference(I)V
    .locals 6

    const-string v3, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    int-to-long v3, p1

    invoke-direct {p0, v3, v4}, Lcom/android/settingsstock/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    iget-object v3, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13

    iget-object v3, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    :cond_1
    const-string v4, ""

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_4

    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v8, p1, v5

    if-ltz v8, :cond_3

    move v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    array-length v8, v1

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b0517

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    const-string v4, ""

    goto :goto_0
.end method

.method private updateWifiDisplaySummary()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0b0427

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0b0426

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0b0425

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 8

    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "floatToIndex enter val = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/settingsstock/DisplaySettings;->mIsUpdateFont:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

    invoke-virtual {v5}, Lcom/android/settingsstock/WarnedListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current font size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, p1, v4

    if-nez v5, :cond_0

    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v0, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_3

    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sub-float v5, v4, v3

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "DisplaySettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v6, "DisplaySettings"

    const-string v9, "onCreate"

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingsstock/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/ISettingsMiscExt;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const v6, 0x7f050017

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->addPreferencesFromResource(I)V

    const-string v6, "button_light"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mButtonLightPreference:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->getButtonLightValue()I

    move-result v6

    int-to-long v0, v6

    const-string v6, "DisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentButtonlight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Lcom/android/settingsstock/DisplaySettings;->updateButtonLightPreferenceDescription(J)V

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mButtonLightPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mButtonLightPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v6, "display_personalize"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "display_default"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "accelerometer"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settingsstock/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v6, "screensaver"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110040

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v6, "screen_timeout"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->getTimoutValue()I

    move-result v6

    int-to-long v2, v6

    const-string v6, "DisplaySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTimeout="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    iget-object v9, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-interface {v6, v9}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->setTimeoutPrefTitle(Landroid/preference/Preference;)V

    const-string v6, "font_size"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingsstock/WarnedListPreference;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

    invoke-direct {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->updateFontSize(Landroid/preference/ListPreference;)V

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

    invoke-virtual {v6, p0}, Lcom/android/settingsstock/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

    invoke-virtual {v6, p0}, Lcom/android/settingsstock/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "notification_pulse"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110024

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settingsstock/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const-string v6, "landscape_launcher"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v6, "hdmi_settings"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mHDMISettings:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mHDMISettings:Landroid/preference/Preference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settingsstock/DisplaySettings;->mHDMISettings:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v6, "tvout_settings"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mTVOut:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mTVOut:Landroid/preference/Preference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settingsstock/DisplaySettings;->mTVOut:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v6, "color"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    const-string v6, "scenes"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mScencePref:Landroid/preference/Preference;

    const-string v6, "wallpaper"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mWallpaperPref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mScencePref:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    const-string v6, "DisplaySettings"

    const-string v7, "remove color preference as FeatureOption.MTK_THEMEMANAGER_APP=false"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settingsstock/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settingsstock/DisplaySettings;->mScencePref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "display"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    const-string v6, "wifi_display"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    :cond_5
    const-string v6, "lock_screen_notifications"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v6, "lock_screen_style"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    return-void

    :cond_6
    :try_start_0
    iget-object v9, p0, Lcom/android/settingsstock/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v6, "notification_light_pulse"

    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string v6, "DisplaySettings"

    const-string v7, "notification_light_pulse not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v6, v8

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b092c

    new-instance v2, Lcom/android/settingsstock/DisplaySettings$4;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/DisplaySettings$4;-><init>(Lcom/android/settingsstock/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/settingsstock/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "screen_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/settingsstock/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v3, "font_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/settingsstock/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v3, "landscape_launcher"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select landscape launcher   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "landscape_launcher"

    check-cast p2, Ljava/lang/String;

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const-string v3, "button_light"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button light parseInt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "button_light"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/settingsstock/DisplaySettings;->updateButtonLightPreferenceDescription(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingsstock/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DisplaySettings;->showDialog(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/WarnedListPreference;->click()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_2
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "notification_light_pulse"

    if-eqz v0, :cond_4

    move v3, v2

    :cond_4
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "incoming_indicator_on_lockscreen"

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method public onResume()V
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    const-string v5, "DisplaySettings"

    const-string v6, "onResume of DisplaySettings"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateLandscapeList()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v5, v6}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateState()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settingsstock/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/thememanager/ThemeManager;->getThemeSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mScencePref:Landroid/preference/Preference;

    const-string v6, "current_scene_name"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mWallpaperPref:Landroid/preference/Preference;

    const-string v6, "current_wallpaper_component_name"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DisplaySettings;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->getTimoutValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/DisplaySettings;->updateTimeoutPreference(I)V

    iget-object v5, p0, Lcom/android/settingsstock/DisplaySettings;->mLockScreenNotifications:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "incoming_indicator_on_lockscreen"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/DisplaySettings;->updateLockScreenStyle()V

    return-void

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-nez p1, :cond_0

    const-string v7, "DisplaySettings"

    const-string v8, "parseString error as decodeStr is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    move-object v4, p1

    const-string v7, "&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v5, v6

    if-le v5, v10, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-ne v5, v8, :cond_2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_1
    const-string v7, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseString return string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseString can not find pakcage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v7, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid format of propery string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-array v7, v10, [Ljava/lang/Object;

    aget-object v8, v6, v8

    aput-object v8, v7, v11

    invoke-virtual {v3, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8

    :try_start_0
    iget-object v4, p0, Lcom/android/settingsstock/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/settingsstock/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/DisplaySettings;->floatToIndex(F)I

    move-result v2

    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFontSizePreference index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0b0526

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference font size =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
