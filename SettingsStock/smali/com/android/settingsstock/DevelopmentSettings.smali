.class public Lcom/android/settingsstock/DevelopmentSettings;
.super Landroid/preference/PreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;,
        Lcom/android/settingsstock/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "allow_mock_location"

.field private static final ANIMATOR_DURATION_SCALE_KEY:Ljava/lang/String; = "animator_duration_scale"

.field private static final APP_PROCESS_LIMIT_KEY:Ljava/lang/String; = "app_process_limit"

.field private static final BUGREPORT:Ljava/lang/String; = "bugreport"

.field private static final BUGREPORT_IN_POWER_KEY:Ljava/lang/String; = "bugreport_in_power"

.field private static final DEBUG_APP_KEY:Ljava/lang/String; = "debug_app"

.field private static final DEBUG_DEBUGGING_CATEGORY_KEY:Ljava/lang/String; = "debug_debugging_category"

.field private static final DEBUG_DRAWING_CATEGORY_KEY:Ljava/lang/String; = "debug_drawing_category"

.field private static final DEBUG_LAYOUT_KEY:Ljava/lang/String; = "debug_layout"

.field private static final DISABLE_OVERLAYS_KEY:Ljava/lang/String; = "disable_overlays"

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final ENABLE_TRACES_KEY:Ljava/lang/String; = "enable_traces"

.field private static final ENFORCE_READ_EXTERNAL:Ljava/lang/String; = "enforce_read_external"

.field private static final FORCE_HARDWARE_UI_KEY:Ljava/lang/String; = "force_hw_ui"

.field private static final FORCE_MSAA_KEY:Ljava/lang/String; = "force_msaa"

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_KEY:Ljava/lang/String; = "hdcp_checking"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final IMMEDIATELY_DESTROY_ACTIVITIES_KEY:Ljava/lang/String; = "immediately_destroy_activities"

.field private static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field private static final LOCAL_BACKUP_PASSWORD:Ljava/lang/String; = "local_backup_password"

.field private static final MSAA_PROPERTY:Ljava/lang/String; = "debug.egl.force_msaa"

.field private static final OPENGL_TRACES_KEY:Ljava/lang/String; = "enable_opengl_traces"

.field private static final OPENGL_TRACES_PROPERTY:Ljava/lang/String; = "debug.egl.trace"

.field private static final OVERLAY_DISPLAY_DEVICES_KEY:Ljava/lang/String; = "overlay_display_devices"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final POINTER_LOCATION_KEY:Ljava/lang/String; = "pointer_location"

.field public static final PREF_FILE:Ljava/lang/String; = "development"

.field public static final PREF_SHOW:Ljava/lang/String; = "show"

.field private static final RESULT_DEBUG_APP:I = 0x3e8

.field private static final SHOW_ALL_ANRS_KEY:Ljava/lang/String; = "show_all_anrs"

.field private static final SHOW_CPU_USAGE_KEY:Ljava/lang/String; = "show_cpu_usage"

.field private static final SHOW_HW_LAYERS_UPDATES_KEY:Ljava/lang/String; = "show_hw_layers_udpates"

.field private static final SHOW_HW_OVERDRAW_KEY:Ljava/lang/String; = "show_hw_overdraw"

.field private static final SHOW_HW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_hw_screen_udpates"

.field private static final SHOW_SCREEN_UPDATES_KEY:Ljava/lang/String; = "show_screen_updates"

.field private static final SHOW_TOUCHES_KEY:Ljava/lang/String; = "show_touches"

.field private static final STRICT_MODE_KEY:Ljava/lang/String; = "strict_mode"

.field private static final SUPPORT_SECONDARY_DISPLAY:Z = false

.field private static final TAG:Ljava/lang/String; = "DevelopmentSettings"

.field private static final TAG_CONFIRM_ENFORCE:Ljava/lang/String; = "confirm_enforce"

.field private static final TRACK_FRAME_TIME_KEY:Ljava/lang/String; = "track_frame_time"

.field private static final TRANSITION_ANIMATION_SCALE_KEY:Ljava/lang/String; = "transition_animation_scale"

.field private static final VERIFY_APPS_OVER_USB_KEY:Ljava/lang/String; = "verify_apps_over_usb"

.field private static final WAIT_FOR_DEBUGGER_KEY:Ljava/lang/String; = "wait_for_debugger"

.field private static final WINDOW_ANIMATION_SCALE_KEY:Ljava/lang/String; = "window_animation_scale"


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/CheckBoxPreference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugLayout:Landroid/preference/CheckBoxPreference;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/CheckBoxPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableTracesPref:Landroid/preference/MultiCheckPreference;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

.field private mForceHardwareUi:Landroid/preference/CheckBoxPreference;

.field private mForceMsaa:Landroid/preference/CheckBoxPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mLastEnabledState:Z

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/CheckBoxPreference;

.field private final mResetCbPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllANRs:Landroid/preference/CheckBoxPreference;

.field private mShowCpuUsage:Landroid/preference/CheckBoxPreference;

.field private mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

.field private mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowTouches:Landroid/preference/CheckBoxPreference;

.field private mStrictMode:Landroid/preference/CheckBoxPreference;

.field private mTrackFrameTime:Landroid/preference/CheckBoxPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

.field private mWaitForDebugger:Landroid/preference/CheckBoxPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settingsstock/DevelopmentSettings;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/DevelopmentSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    const/4 v1, 0x0

    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private dismissDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method private findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static isPermissionEnforced(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private removeHdcpOptionsForProduction()V
    .locals 3

    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "hdcp_checking"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDontPokeProperties:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0, v4, v0}, Lcom/android/settingsstock/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settingsstock/DevelopmentSettings;->resetDebuggerOptions()V

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/settingsstock/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/settingsstock/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settingsstock/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/android/settingsstock/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/DevelopmentSettings;->writeEnableTracesOptions(J)V

    invoke-direct {p0, v4}, Lcom/android/settingsstock/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    iput-boolean v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateAllOptions()V

    iput-boolean v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDontPokeProperties:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v2, p2}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method private showVerifierSetting()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAllOptions()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-boolean v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, v3}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    :goto_0
    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, v2}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v5}, Lcom/android/settingsstock/DevelopmentSettings;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v5, "mock_location"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateHdcpValues()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updatePasswordSummary()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateDebuggerOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateStrictModeVisualOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updatePointerLocationOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateShowTouchesOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateFlingerOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateCpuUsageOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateHardwareUiOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateMsaaOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateShowHwOverdrawOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateDebugLayoutOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateAnimationScaleOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateOpenGLTracesOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateEnableTracesOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateAppProcessLimitOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateShowAllANRsOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateBugreportOptions()V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    goto/16 :goto_0

    :cond_1
    move v2, v4

    goto :goto_4

    :cond_2
    move v2, v4

    goto/16 :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6

    :try_start_0
    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    const/high16 v4, 0x3f80

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0867

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iput-boolean v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    :goto_2
    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0866

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateEnableTracesOptions()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "debug.atrace.tags.enableflags"

    invoke-static {v8, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v8}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_2

    shl-int v8, v6, v2

    int-to-long v8, v8

    and-long/2addr v8, v0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    move v4, v6

    :goto_1
    iget-object v8, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v8, v9, v4}, Landroid/preference/MultiCheckPreference;->setValue(IZ)V

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v7

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v7, 0x7f0b0881

    invoke-virtual {v6, v7}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    :goto_2
    return-void

    :cond_3
    array-length v8, v5

    if-ne v3, v8, :cond_4

    iput-boolean v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v7, 0x7f0b0883

    invoke-virtual {v6, v7}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    goto :goto_2

    :cond_4
    iput-boolean v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    iget-object v8, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v9, 0x7f0b0882

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-virtual {p0, v9, v6}, Lcom/android/settingsstock/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/preference/MultiCheckPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iget-object v11, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v10, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v10, v9

    goto :goto_0

    :cond_2
    move v8, v9

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    const/4 v3, 0x1

    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v2

    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateMsaaOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "overlay_display_devices"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b07fd

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b07fc

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateShowHwOverdrawOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_overdraw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settingsstock/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.profile"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    return-void
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeEnableTracesOptions()V
    .locals 6

    const-wide/16 v1, 0x0

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v4}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Landroid/preference/MultiCheckPreference;->getValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    int-to-long v4, v4

    or-long/2addr v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/settingsstock/DevelopmentSettings;->writeEnableTracesOptions(J)V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateEnableTracesOptions()V

    return-void
.end method

.method private writeEnableTracesOptions(J)V
    .locals 3

    const-string v0, "debug.atrace.tags.enableflags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    return-void
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeMsaaOptions()V
    .locals 2

    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2

    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateOpenGLTracesOptions()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

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

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwOverdrawOptions()V
    .locals 2

    const-string v1, "debug.hwui.show_overdraw"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions()V
    .locals 2

    const-string v1, "debug.hwui.profile"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeDebuggerOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateDebuggerOptions()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_2

    iput-boolean v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDialogClicked:Z

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->dismissDialogs()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b071a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0719

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->resetDangerousOptions()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    iget-boolean v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settingsstock/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_1

    iput-boolean v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDialogClicked:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateBugreportOptions()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_3

    iput-boolean v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDialogClicked:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/settingsstock/DevelopmentSettings;->setPrefsEnabledState(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "DevelopmentSettings"

    const-string v1, "-->onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    const-string v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const v5, 0x7f05000e

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->addPreferencesFromResource(I)V

    const-string v5, "enable_adb"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v5, "bugreport"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    const-string v5, "bugreport_in_power"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    const-string v5, "keep_screen_on"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v5, "enforce_read_external"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    const-string v5, "allow_mock_location"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v5, "local_backup_password"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "debug_app"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "wait_for_debugger"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    const-string v5, "verify_apps_over_usb"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->showVerifierSetting()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "debug_debugging_category"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    const-string v5, "strict_mode"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    const-string v5, "pointer_location"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    const-string v5, "show_touches"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    const-string v5, "show_screen_updates"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    const-string v5, "disable_overlays"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    const-string v5, "show_cpu_usage"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    const-string v5, "force_hw_ui"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v5, "force_msaa"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    const-string v5, "track_frame_time"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    const-string v5, "show_hw_screen_udpates"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    const-string v5, "show_hw_layers_udpates"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    const-string v5, "show_hw_overdraw"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

    const-string v5, "debug_layout"

    invoke-direct {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    const-string v5, "window_animation_scale"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "transition_animation_scale"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "animator_duration_scale"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "overlay_display_devices"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "debug_drawing_category"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "enable_opengl_traces"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "enable_traces"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/MultiCheckPreference;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    sget-object v5, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    array-length v5, v5

    new-array v4, v5, [Ljava/lang/String;

    const/4 v3, 0x1

    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_3

    const/4 v5, 0x1

    shl-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    sget-object v6, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v5, v4}, Landroid/preference/MultiCheckPreference;->setEntryValues([Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v5, p0}, Landroid/preference/MultiCheckPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "immediately_destroy_activities"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "app_process_limit"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "show_all_anrs"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "hdcp_checking"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->removeHdcpOptionsForProduction()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->dismissDialogs()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iput-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_3
    iput-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateHdcpValues()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->pokeSystemProperties()V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settingsstock/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/settingsstock/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/settingsstock/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/settingsstock/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    invoke-direct {p0, p2}, Lcom/android/settingsstock/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    if-ne p1, v2, :cond_6

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeEnableTracesOptions()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    invoke-direct {p0, p2}, Lcom/android/settingsstock/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDialogClicked:Z

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->dismissDialogs()V

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0718

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0717

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;->show(Lcom/android/settingsstock/DevelopmentSettings;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v2, v1}, Lcom/android/settingsstock/DevelopmentSettings;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_d

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settingsstock/AppPicker;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/settingsstock/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_12

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_15

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_18

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1a

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeTrackFrameTimeOptions()V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1c

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    :cond_1c
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeShowHwOverdrawOptions()V

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    const-string v1, "DevelopmentSettings"

    const-string v3, "development enable dialog is null"

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->setPrefsEnabledState(Z)V

    iget-boolean v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "development_settings_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    iget-object v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/android/settingsstock/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/settingsstock/DevelopmentSettings;->setPrefsEnabledState(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/settingsstock/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    const/16 v2, 0x10

    const/4 v5, -0x2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method pokeSystemProperties()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingsstock/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settingsstock/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/settingsstock/DevelopmentSettings;->mHaveDebugSettings:Z

    return-void
.end method
