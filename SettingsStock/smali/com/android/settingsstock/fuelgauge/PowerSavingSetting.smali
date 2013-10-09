.class public Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;
.super Landroid/preference/PreferenceActivity;
.source "PowerSavingSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_BLUETOOTH_SWITCH:Ljava/lang/String; = "turn_off_bluetooth"

.field private static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final KEY_BRIGHTNESS_SWITCH:Ljava/lang/String; = "brightness_switch"

.field private static final KEY_GPS_SWITCH:Ljava/lang/String; = "turn_off_gps"

.field private static final KEY_POWER_SAVING_LEVEL:Ljava/lang/String; = "power_saving_level"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_SCREEN_TIMEOUT_SWITCH:Ljava/lang/String; = "screen_timeout_switch"

.field private static final KEY_SYNC_SWITCH:Ljava/lang/String; = "turn_off_sync"

.field private static final KEY_WIFI_SWITCH:Ljava/lang/String; = "turn_off_wifi"

.field private static final MENU_ID_CANCLE:I = 0x2

.field private static final MENU_ID_OK:I = 0x1

.field private static final POWER_SAVING_LEVEL_DEFAULT:I = 0x14


# instance fields
.field private mBluetoothSwitch:Landroid/preference/CheckBoxPreference;

.field private mBrightness:Landroid/preference/ListPreference;

.field private mBrightnessSwitch:Landroid/preference/CheckBoxPreference;

.field private mGPSSwitch:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingLevel:Landroid/preference/ListPreference;

.field private mScreenTimeOutSwitch:Landroid/preference/CheckBoxPreference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSyncSwitch:Landroid/preference/CheckBoxPreference;

.field private mWiFiSwitch:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14

    const-wide/16 v11, 0x0

    const-string v13, "device_policy"

    invoke-virtual {p0, v13}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    :goto_0
    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    :goto_1
    return-void

    :cond_0
    move-wide v3, v11

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

.method private formatValues(ILandroid/preference/ListPreference;)I
    .locals 5

    move-object v1, p2

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge p1, v2, :cond_0

    move p1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private modifyBrightness(I)V
    .locals 2

    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateTimeoutPreferenceDescription(JLandroid/preference/ListPreference;)V
    .locals 17

    move-object/from16 v6, p3

    const-wide/16 v12, -0x1

    cmp-long v12, p1, v12

    if-nez v12, :cond_0

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0b095e

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-wide/16 v12, -0x1

    cmp-long v12, p1, v12

    if-gez v12, :cond_1

    const-string v7, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v12, v11

    if-ge v3, v12, :cond_3

    aget-object v12, v11, v3

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v12, p1, v9

    if-ltz v12, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-lez v12, :cond_2

    move v1, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p3

    if-ne v0, v12, :cond_4

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0b0517

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v16, v2, v1

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mPowerSavingLevel:Landroid/preference/ListPreference;

    move-object/from16 v0, p3

    if-ne v0, v12, :cond_5

    aget-object v12, v2, v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "%"

    const-string v13, "%%"

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0b0942

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    move-object/from16 v0, p3

    if-ne v0, v12, :cond_6

    aget-object v12, v2, v1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "%"

    const-string v13, "%%"

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0b0943

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_6
    const-string v7, ""

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const v6, 0x7f04005a

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->addPreferencesFromResource(I)V

    invoke-static {p0, v6, v8}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const-string v6, "brightness"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    const-string v6, "brightness_switch"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightnessSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightnessSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "power_saving_screen_brightness_switch"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightnessSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_1
    const-string v6, "power_saving_screen_brightness"

    const/16 v9, 0x14

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    int-to-long v9, v0

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v10, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->updateTimeoutPreferenceDescription(JLandroid/preference/ListPreference;)V

    const-string v6, "screen_timeout_switch"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeOutSwitch:Landroid/preference/CheckBoxPreference;

    const-string v6, "screen_timeout"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeOutSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "power_saving_screen_off_timeout_switch"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeOutSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_3
    const-string v6, "power_saving_screen_off_timeout"

    const-wide/16 v9, 0x7530

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->updateTimeoutPreferenceDescription(JLandroid/preference/ListPreference;)V

    const-string v6, "power_saving_level"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mPowerSavingLevel:Landroid/preference/ListPreference;

    const-string v6, "power_saving_mode_level"

    const-wide/16 v9, 0x14

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mPowerSavingLevel:Landroid/preference/ListPreference;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mPowerSavingLevel:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mPowerSavingLevel:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mPowerSavingLevel:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v4, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->updateTimeoutPreferenceDescription(JLandroid/preference/ListPreference;)V

    const-string v6, "turn_off_wifi"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mWiFiSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mWiFiSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "power_saving_wifi"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v6, "turn_off_bluetooth"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBluetoothSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBluetoothSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "power_saving_bluetooth"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v6, "turn_off_gps"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mGPSSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mGPSSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "power_saving_gps"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_6
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v6, "turn_off_sync"

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mSyncSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mSyncSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "power_saving_sync"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_7

    :goto_7
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v6, v8

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_2
    move v6, v8

    goto/16 :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_4
    move v6, v8

    goto :goto_4

    :cond_5
    move v6, v8

    goto :goto_5

    :cond_6
    move v6, v8

    goto :goto_6

    :cond_7
    move v7, v8

    goto :goto_7
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "screen_timeout"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v2, v1

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->updateTimeoutPreferenceDescription(JLandroid/preference/ListPreference;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const-string v2, "power_saving_level"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_mode_level"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v2, v1

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mPowerSavingLevel:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->updateTimeoutPreferenceDescription(JLandroid/preference/ListPreference;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    const-string v2, "brightness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_screen_brightness"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v2, v1

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->updateTimeoutPreferenceDescription(JLandroid/preference/ListPreference;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightnessSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightnessSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_brightness_mode"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_brightness"

    const/16 v15, 0x14

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "power_saving_record_screen_brightness_mode"

    invoke-static {v13, v14, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "power_saving_record_screen_brightness"

    invoke-static {v13, v14, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const/4 v2, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "power_saving_screen_brightness_switch"

    invoke-static {v13, v14, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v13

    return v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBrightness:Landroid/preference/ListPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeOutSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeOutSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_off_timeout"

    const/16 v15, 0x5dc

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "power_saving_record_screen_off_timeout"

    invoke-static {v13, v14, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v6, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "power_saving_screen_off_timeout_switch"

    invoke-static {v13, v14, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mWiFiSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_7

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mWiFiSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    const-string v13, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "power_saving_record_wifi"

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_3
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v11, 0x1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "power_saving_wifi"

    invoke-static {v13, v14, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBluetoothSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mBluetoothSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "power_saving_record_bt"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v13

    const/16 v16, 0xc

    move/from16 v0, v16

    if-ne v13, v0, :cond_9

    const/4 v13, 0x1

    :goto_4
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "power_saving_bluetooth"

    invoke-static {v13, v14, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x0

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mGPSSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mGPSSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    const-string v13, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "power_saving_record_gps"

    const-string v13, "gps"

    invoke-virtual {v5, v13}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x1

    :goto_5
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v4, 0x1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "power_saving_gps"

    invoke-static {v13, v14, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    const/4 v13, 0x0

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mSyncSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->mSyncSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "power_saving_record_sync"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v13

    if-eqz v13, :cond_f

    const/4 v13, 0x1

    :goto_6
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v10, 0x1

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "power_saving_sync"

    invoke-static {v13, v14, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    const/4 v13, 0x0

    goto :goto_6
.end method
