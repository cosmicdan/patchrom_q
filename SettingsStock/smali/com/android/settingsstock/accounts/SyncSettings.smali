.class public Lcom/android/settingsstock/accounts/SyncSettings;
.super Lcom/android/settingsstock/accounts/AccountPreferenceBase;
.source "SyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settingsstock/DialogCreatable;


# static fields
.field private static final KEY_SYNC_SWITCH:Ljava/lang/String; = "sync_switch"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

.field private mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private removeAccountPreferences()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settingsstock/AccountPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startAccountSettings(Lcom/android/settingsstock/AccountPreference;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "account"

    invoke-virtual {p1}, Lcom/android/settingsstock/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->finish()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->removeAccountPreferences()V

    const/4 v7, 0x0

    array-length v10, p1

    :goto_1
    if-ge v7, v10, :cond_4

    aget-object v2, p1, v7

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/accounts/SyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v12, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    const/4 v12, 0x0

    iget-object v6, p0, Lcom/android/settingsstock/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    array-length v9, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_1

    aget-object v11, v6, v8

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v12, 0x1

    :cond_1
    if-eqz v12, :cond_2

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v0, Lcom/android/settingsstock/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingsstock/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->updateAuthDescriptions()V

    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settingsstock/AccountPreference;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/AccountPreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/android/settingsstock/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05003a

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/accounts/SyncSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sync_switch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settingsstock/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settingsstock/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settingsstock/accounts/SyncSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/accounts/SyncSettings$1;-><init>(Lcom/android/settingsstock/accounts/SyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/accounts/SyncSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public bridge synthetic onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    instance-of v0, p2, Lcom/android/settingsstock/AccountPreference;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/settingsstock/AccountPreference;

    invoke-direct {p0, p2}, Lcom/android/settingsstock/accounts/SyncSettings;->startAccountSettings(Lcom/android/settingsstock/AccountPreference;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->onStart()V

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->onStop()V

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public showDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/accounts/SyncSettings;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settingsstock/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settingsstock/accounts/SyncSettings;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lcom/android/settingsstock/accounts/SyncSettings;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settingsstock/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
