.class public Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# static fields
.field private static final ALWAY_SHOW_TUTORIAL:Z = true

.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final FALLBACK_REQUEST:I = 0x65

.field private static final FINISH_PENDING:Ljava/lang/String; = "finish_pending"

.field private static final KEY_UNLOCK_BACKUP_INFO:Ljava/lang/String; = "unlock_backup_info"

.field private static final KEY_UNLOCK_SET_BIOMETRIC_WEAK:Ljava/lang/String; = "unlock_set_biometric_weak"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_OFF:Ljava/lang/String; = "unlock_set_off"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field private static final KEY_UNLOCK_SET_VOICE_WEAK:Ljava/lang/String; = "unlock_set_voice_weak"

.field public static final MINIMUM_QUALITY_KEY:Ljava/lang/String; = "minimum_quality"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final WAITING_FOR_CONFIRMATION:Ljava/lang/String; = "waiting_for_confirmation"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFinishPending:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordConfirmed:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    iput-boolean v0, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    iput-boolean v0, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    return-void
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V
    .locals 15

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "lockscreen.weak_fallback"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v12, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v12}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    const-string v12, "user"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    :goto_1
    if-ltz v3, :cond_13

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    instance-of v12, v7, Landroid/preference/PreferenceScreen;

    if-eqz v12, :cond_2

    move-object v12, v7

    check-cast v12, Landroid/preference/PreferenceScreen;

    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v10, 0x1

    const-string v12, "unlock_set_off"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-gtz p1, :cond_4

    const/4 v1, 0x1

    :goto_2
    move v10, v8

    :cond_0
    :goto_3
    if-eqz v10, :cond_1

    if-eqz v6, :cond_12

    invoke-direct {p0, v4}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    :cond_1
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const-string v12, "unlock_set_none"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-gtz p1, :cond_6

    const/4 v1, 0x1

    :goto_5
    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    const-string v12, "unlock_set_biometric_weak"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const v12, 0x8000

    move/from16 v0, p1

    if-le v0, v12, :cond_8

    move-object/from16 v0, p2

    iget-boolean v12, v0, Llibcore/util/MutableBoolean;->value:Z

    if-eqz v12, :cond_9

    :cond_8
    const/4 v1, 0x1

    :goto_6
    move v10, v11

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    :cond_a
    const-string v12, "unlock_set_voice_weak"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v12, 0x4000

    move/from16 v0, p1

    if-gt v0, v12, :cond_b

    const/4 v1, 0x1

    :goto_7
    const/4 v10, 0x1

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    const-string v12, "unlock_set_pattern"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x1

    move/from16 v0, p1

    if-gt v0, v12, :cond_d

    const/4 v1, 0x1

    :goto_8
    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    :cond_e
    const-string v12, "unlock_set_pin"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/high16 v12, 0x2

    move/from16 v0, p1

    if-gt v0, v12, :cond_f

    const/4 v1, 0x1

    :goto_9
    goto :goto_3

    :cond_f
    const/4 v1, 0x0

    goto :goto_9

    :cond_10
    const-string v12, "unlock_set_password"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/high16 v12, 0x6

    move/from16 v0, p1

    if-gt v0, v12, :cond_11

    const/4 v1, 0x1

    :goto_a
    goto/16 :goto_3

    :cond_11
    const/4 v1, 0x0

    goto :goto_a

    :cond_12
    if-nez v1, :cond_2

    const v12, 0x7f0b03a7

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_13
    return-void
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 8

    const/4 v7, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settingsstock/ChooseLockGeneric;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "lockscreen.weak_fallback"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "lockscreen.weak_fallback_for"

    const-string v5, "face_unlock"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "confirm_credentials"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, ":android:show_fragment_title"

    const v5, 0x7f0b0395

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v1
.end method

.method private getVoiceSensorIntent()Landroid/content/Intent;
    .locals 6

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settingsstock/ChooseLockGeneric;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "lockscreen.weak_fallback"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "lockscreen.weak_fallback_for"

    const-string v4, "voice_unlock"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "confirm_credentials"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, ":android:show_fragment_title"

    const v4, 0x7f0b0395

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.mediatek.voiceunlock"

    const-string v4, "com.mediatek.voiceunlock.VoiceUnlock"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method private updatePreferencesOrFinish()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_1

    const-string v4, "minimum_quality"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Llibcore/util/MutableBoolean;

    invoke-direct {v0, v6}, Llibcore/util/MutableBoolean;-><init>(Z)V

    invoke-direct {p0, v3, v0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v4, 0x7f05002d

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0, v3, v0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method private upgradeQuality(ILlibcore/util/MutableBoolean;)I
    .locals 2

    const v1, 0x8000

    invoke-direct {p0, p1}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result v0

    if-le v0, p1, :cond_0

    if-eqz p2, :cond_3

    if-gt p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p2, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move p1, v0

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    if-eq p1, v1, :cond_1

    const/16 v1, 0x4000

    if-ne p1, v1, :cond_0

    goto :goto_1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 3

    iget-object v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/high16 v2, 0x2

    if-ge p1, v2, :cond_1

    const/high16 p1, 0x2

    :cond_1
    return p1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x1

    if-ge p1, v0, :cond_0

    const/high16 p1, 0x1

    :cond_0
    return p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b0937

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    iput-boolean v1, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-direct {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settingsstock/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "confirm_credentials"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz p1, :cond_0

    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    const-string v2, "finish_pending"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    :cond_0
    iget-boolean v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_1

    new-instance v1, Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settingsstock/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-boolean v3, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-direct {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.weak_fallback"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.weak_fallback_for"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v4, "face_unlock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400a3

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    :goto_0
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v1, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_1
    return-object v3

    :cond_2
    const-string v4, "voice_unlock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400a4

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    const-string v2, "unlock_set_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3, v3}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x8000

    invoke-virtual {p0, v2, v3}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_2
    const-string v2, "unlock_set_voice_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x4000

    invoke-virtual {p0, v2, v3}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_3
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_4
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_5
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "finish_pending"

    iget-boolean v1, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 11

    iget-boolean v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Tried to update password without confirming it"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "lockscreen.weak_fallback"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result p1

    const/high16 v8, 0x2

    if-lt p1, v8, :cond_3

    iget-object v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v6

    const/4 v8, 0x4

    if-ge v6, v8, :cond_1

    const/4 v6, 0x4

    :cond_1
    iget-object v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v5

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/android/settingsstock/ChooseLockPassword;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v8, "lockscreen.password_type"

    invoke-virtual {v2, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "lockscreen.password_min"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "lockscreen.password_max"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v8, "confirm_credentials"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "lockscreen.weak_fallback"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "lockscreen.weak_fallback_for"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "settings_command_key"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "settings_command_value"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "settings_command_key"

    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "settings_command_value"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "lockscreen.weak_fallback_for"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0x65

    invoke-virtual {p0, v2, v8}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    const/high16 v8, 0x200

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/high16 v8, 0x1

    if-ne p1, v8, :cond_7

    iget-object v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v7, 0x1

    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v7, :cond_5

    const-class v8, Lcom/android/settingsstock/ChooseLockPatternTutorial;

    :goto_2
    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v8, "key_lock_method"

    const-string v9, "pattern"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "confirm_credentials"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "lockscreen.weak_fallback"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "lockscreen.weak_fallback_for"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "settings_command_key"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "settings_command_value"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "settings_command_key"

    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "settings_command_value"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "lockscreen.weak_fallback_for"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0x65

    invoke-virtual {p0, v2, v8}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    const-class v8, Lcom/android/settingsstock/ChooseLockPattern;

    goto :goto_2

    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    const/high16 v8, 0x200

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const v8, 0x8000

    if-ne p1, v8, :cond_8

    invoke-direct {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    const/16 v8, 0x4000

    if-ne p1, v8, :cond_9

    invoke-direct {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getVoiceSensorIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    if-nez p1, :cond_a

    iget-object v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v8, p0, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0
.end method
