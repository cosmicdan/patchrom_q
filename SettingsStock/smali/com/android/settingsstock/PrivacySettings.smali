.class public Lcom/android/settingsstock/PrivacySettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field private static final BACKUP_CATEGORY:Ljava/lang/String; = "backup_category"

.field private static final BACKUP_DATA:Ljava/lang/String; = "backup_data"

.field private static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field private static final DIALOG_ERASE_BACKUP:I = 0x2

.field private static final DRM_RESET:Ljava/lang/String; = "drm_settings"

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"

.field private static final PERSONAL_DATA_CATEGORY:Ljava/lang/String; = "personal_data"

.field private static final TAG:Ljava/lang/String; = "PrivacySettings"


# instance fields
.field private mAutoRestore:Landroid/preference/CheckBoxPreference;

.field private mBackup:Landroid/preference/CheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/settingsstock/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b07f8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settingsstock/PrivacySettings;->mDialogType:I

    invoke-virtual {p0}, Lcom/android/settingsstock/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0802

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0801

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 12

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    iget-object v8, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v8, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    iget-object v8, p0, Lcom/android/settingsstock/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-eqz v0, :cond_0

    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    :try_start_1
    invoke-interface {v1, v8}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/android/settingsstock/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v8, "backup_auto_restore"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/settingsstock/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    move v4, v9

    :goto_3
    iget-object v8, p0, Lcom/android/settingsstock/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settingsstock/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/android/settingsstock/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v5

    iget-object v8, p0, Lcom/android/settingsstock/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v8, "PrivacySettings"

    const-string v11, "set backup provisioned false!"

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v8, v10

    goto :goto_2

    :cond_2
    move v4, v10

    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b0938

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/settingsstock/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settingsstock/PrivacySettings;->setBackupEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/PrivacySettings;->updateConfigureSummary()V

    :cond_0
    iput v2, p0, Lcom/android/settingsstock/PrivacySettings;->mDialogType:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f050023

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/PrivacySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string v1, "backup_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    const-string v1, "auto_restore"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v1, "configure_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settingsstock/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settingsstock/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "backup_category"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/PrivacySettings;->updateToggles()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settingsstock/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/PrivacySettings;->showEraseBackupDialog()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settingsstock/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    :try_start_0
    iget-object v3, p0, Lcom/android/settingsstock/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/settingsstock/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settingsstock/PrivacySettings;->updateToggles()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingsstock/PrivacySettings;->mDialogType:I

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
