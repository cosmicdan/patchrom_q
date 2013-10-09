.class public Lcom/android/settingsstock/SecuritySettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_IMPROVE_REQUEST:I = 0x7c

.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_LIVELINESS_OFF:I = 0x7d

.field private static final DELAY_MILLIS:I = 0x1f4

.field private static final KEY_BIOMETRIC_WEAK_IMPROVE_MATCHING:Ljava/lang/String; = "biometric_weak_improve_matching"

.field private static final KEY_BIOMETRIC_WEAK_LIVELINESS:Ljava/lang/String; = "biometric_weak_liveliness"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "reset_credentials"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_SIM_LOCK_PREF:Ljava/lang/String; = "sim_lock_pref"

.field private static final KEY_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "unlock_tactile_feedback"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TOGGLE_VERIFY_APPLICATIONS:Ljava/lang/String; = "toggle_verify_applications"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mScrollHandler:Landroid/os/Handler;

.field private mScrollRunner:Ljava/lang/Runnable;

.field private mScrollToUnknownSources:Z

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSiminfoReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mUnknownSourcesPosition:I

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/SecuritySettings$1;-><init>(Lcom/android/settingsstock/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settingsstock/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/SecuritySettings$2;-><init>(Lcom/android/settingsstock/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/SecuritySettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/SecuritySettings;->mUnknownSourcesPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/SecuritySettings;)Lcom/android/settingsstock/ChooseLockSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v17, 0x7f050025

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/4 v14, 0x1

    :goto_0
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v17

    if-eqz v17, :cond_8

    const v8, 0x7f050029

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settingsstock/SecuritySettings;->addPreferencesFromResource(I)V

    const-string v17, "SecuritySettings"

    const-string v18, "FeatureOption.MTK_EMMC_SUPPORT=true"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-nez v17, :cond_c

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/SecuritySettings;->mIsPrimary:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/SecuritySettings;->mIsPrimary:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    const-string v17, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_1

    const v17, 0x7f0b037b

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/SecuritySettings;->mIsPrimary:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :cond_2
    :goto_3
    :pswitch_0
    const-string v17, "lock_after_timeout"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->setupLockAfterPreference()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->updateLockAfterPreferenceSummary()V

    :cond_3
    const-string v17, "biometric_weak_liveliness"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    const-string v17, "visiblepattern"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    const-string v17, "power_button_instantly_locks"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const v17, 0x7f050026

    move/from16 v0, v17

    if-eq v8, v0, :cond_4

    const v17, 0x7f050030

    move/from16 v0, v17

    if-ne v8, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v17

    const/high16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const-string v17, "security_category"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    const-string v17, "visiblepattern"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const v17, 0x7f05002a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string v17, "sim_lock"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_6

    const-string v17, "sim_lock_pref"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_d

    const-string v17, "SecuritySettings"

    const-string v18, "No sim found"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_6
    :goto_4
    const-string v17, "show_password"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/SecuritySettings;->mIsPrimary:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    const-string v17, "reset_credentials"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    :goto_5
    const-string v17, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v17, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/SecuritySettings;->mIsPrimary:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->showVerifierSetting()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->isVerifierInstalled()Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_6
    return-object v9

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_8
    const v8, 0x7f050027

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v17

    if-eqz v17, :cond_a

    const v8, 0x7f050026

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v17

    if-eqz v17, :cond_b

    const v8, 0x7f050030

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const v8, 0x7f05002c

    goto/16 :goto_1

    :sswitch_1
    const v8, 0x7f05002e

    goto/16 :goto_1

    :sswitch_2
    const v8, 0x7f05002b

    goto/16 :goto_1

    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_2

    :pswitch_1
    const v17, 0x7f050028

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    :pswitch_2
    const v17, 0x7f05002f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_e

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    const-string v17, "SecuritySettings"

    const-string v18, "Only one Sim inserted"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_6

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v17, "com.android.settingsstock"

    const-string v18, "com.android.settingsstock.IccLockSettings"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    iget-wide v0, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v15

    const-string v17, "slotid"

    iget v0, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v13, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_e
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v6, v0, :cond_6

    const-string v17, "SecuritySettings"

    const-string v18, "two Sims inserted"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "type"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class v17, Lcom/mediatek/gemini/SimListEntrance;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    const-string v17, "sim_lock"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    :cond_10
    const-string v17, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/SecuritySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_12
    const-string v17, "device_admin_category"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_3
    iget-object v9, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void

    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 7

    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget v6, p0, Lcom/android/settingsstock/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/settingsstock/SecuritySettings;->mUnknownSourcesPosition:I

    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p2, v3

    goto :goto_0

    :cond_1
    instance-of v6, v3, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_2

    move-object v1, v3

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, p1, v1}, Lcom/android/settingsstock/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object p2, v5

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/settingsstock/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/settingsstock/SecuritySettings;->mUnknownSourcesPosition:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settingsstock/SecuritySettings;->disableUnusableTimeouts(J)V

    :cond_0
    return-void

    :cond_1
    move-wide v0, v6

    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

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

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    move v0, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f0b0375

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settingsstock/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private warnAppInstallation()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0635

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->startBiometricWeakImprove()V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settingsstock/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "SecuritySettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingsstock/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settingsstock/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingsstock/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settingsstock/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settingsstock/SecuritySettings;->mScrollToUnknownSources:Z

    :cond_0
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/SecuritySettings;->updateLockAfterPreferenceSummary()V

    :cond_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settingsstock/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const-string v5, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "com.android.settingsstock.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v5, 0x7b

    invoke-virtual {p0, p0, v3, v5, v6}, Lcom/android/settingsstock/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v5, "biometric_weak_improve_matching"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settingsstock/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v3, 0x7c

    invoke-virtual {v0, v3, v6, v6}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    :cond_2
    const-string v5, "biometric_weak_liveliness"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, p2}, Lcom/android/settingsstock/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settingsstock/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/android/settingsstock/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v5, 0x7d

    invoke-virtual {v0, v5, v6, v6}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const-string v5, "lockenabled"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, p2}, Lcom/android/settingsstock/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    :cond_5
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0, p2}, Lcom/android/settingsstock/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    :cond_6
    const-string v5, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, p2}, Lcom/android/settingsstock/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/settingsstock/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_9

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_password"

    iget-object v7, p0, Lcom/android/settingsstock/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v4

    :cond_8
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/android/settingsstock/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_b

    iget-object v5, p0, Lcom/android/settingsstock/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/settingsstock/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v3}, Lcom/android/settingsstock/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v5, "toggle_verify_applications"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "package_verifier_enable"

    iget-object v7, p0, Lcom/android/settingsstock/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    move v3, v4

    :cond_c
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settingsstock/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    iget-boolean v2, p0, Lcom/android/settingsstock/SecuritySettings;->mScrollToUnknownSources:Z

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/settingsstock/SecuritySettings;->mScrollToUnknownSources:Z

    iput v4, p0, Lcom/android/settingsstock/SecuritySettings;->mUnknownSourcesPosition:I

    const-string v2, "toggle_install_applications"

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/settingsstock/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    const-string v2, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find position unknown resources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settingsstock/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settingsstock/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/settingsstock/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_password"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    const-string v2, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyStore.State on resume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settingsstock/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    sget-object v5, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v1, v5, :cond_7

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/settingsstock/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_6
    move v2, v4

    goto :goto_0

    :cond_7
    move v3, v4

    goto :goto_1
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
