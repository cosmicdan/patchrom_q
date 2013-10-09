.class public Lcom/android/settingsstock/LocationSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"

.field private static final KEY_LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final KEY_LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field private static final KEY_LOCATION_TOGGLE:Ljava/lang/String; = "location_toggle"

.field private static final TAG:Ljava/lang/String; = "LocationSettings"


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

.field private mLocationAccess:Landroid/preference/CheckBoxPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/LocationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingsstock/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f05001e

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/LocationSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settingsstock/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    const-string v1, "location_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settingsstock/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v1, "location_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/lbs/CustomSwitchPreference;

    iput-object v1, p0, Lcom/android/settingsstock/LocationSettings;->mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

    const-string v1, "assisted_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settingsstock/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v2, "LocationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAssistedGps is null :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settingsstock/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onToggleLocationAccess(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method private updateLocationToggles()V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/settingsstock/LocationSettings;->mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/mediatek/lbs/CustomSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settingsstock/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "assisted_gps_enabled"

    const/4 v7, 0x2

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    :goto_1
    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settingsstock/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/LocationSettings;->onToggleLocationAccess(Z)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    const-string v0, "network"

    iget-object v1, p0, Lcom/android/settingsstock/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mGps:Lcom/mediatek/lbs/CustomSwitchPreference;

    invoke-virtual {v0}, Lcom/mediatek/lbs/CustomSwitchPreference;->isChecked()Z

    move-result v7

    const-string v0, "gps"

    invoke-static {v6, v0, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    const-class v0, Lcom/mediatek/lbs/AgpsEpoSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f0b05e7

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingsstock/LocationSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    const-string v1, "assisted_gps_enabled"

    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    invoke-static {v6, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settingsstock/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settingsstock/LocationSettings;->updateLocationToggles()V

    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingsstock/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/LocationSettings$1;-><init>(Lcom/android/settingsstock/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settingsstock/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public onStart()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settingsstock/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settingsstock/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    :cond_0
    return-void
.end method
