.class public final Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_NAME_MAX_LENGTH_BYTES:I = 0x3b

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field private static final KEY_PROFILE_CONTAINER:Ljava/lang/String; = "profile_container"

.field private static final KEY_RENAME_DEVICE:Ljava/lang/String; = "rename_device"

.field private static final KEY_UNPAIR:Ljava/lang/String; = "unpair"

.field private static final TAG:Ljava/lang/String; = "DeviceProfilesSettings"


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

.field private mRenameDeviceNamePref:Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private addPreferencesForProfiles()V
    .locals 4

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0, v2}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0b02dd

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f0b02d2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b02d3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/settingsstock/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private createProfilePreference(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    invoke-interface {p1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0, v1, p1}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    return-object v1
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;
    .locals 5

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onProfileClicked(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    :goto_1
    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v0, v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-direct {p0, p2, p1}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1, v0, v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    return-void
.end method

.method private refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-interface {p2, v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-interface {p2, v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfiles()V
    .locals 6

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->unpair()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v4, "device"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    const v4, 0x7f05000a

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    const-string v4, "profile_container"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    const-string v4, "rename_device"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_1

    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Activity started without a remote Bluetooth device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->finish()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "device"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, v1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_2

    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Device not found, cannot connect to it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->refresh()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/preference/PreferenceFragment;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;Landroid/preference/CheckBoxPreference;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unpair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5, p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/preference/PreferenceFragment;)V

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5, p0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->refresh()V

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v5, v3, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/settingsstock/bluetooth/Utf8ByteLengthFilter;

    const/16 v7, 0x3b

    invoke-direct {v6, v7}, Lcom/android/settingsstock/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v6, v5, v4

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    instance-of v5, v1, Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "device"

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
