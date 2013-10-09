.class public abstract Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ToggleFeaturePreferenceFragment"
.end annotation


# instance fields
.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field protected mPreferenceKey:Ljava/lang/String;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mSummaryPreference:Landroid/preference/Preference;

.field protected mToggleSwitch:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;
    .locals 7

    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    new-instance v1, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    invoke-direct {v1, p1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    new-instance v1, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment$1;-><init>(Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f040091

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    return-void
.end method

.method protected abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5

    const-string v4, "preference_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    const-string v4, "checked"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v4, v1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v4, "summary"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method
