.class final Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final DEFAULT_DISCOVERABLE_TIMEOUT:I = 0x78

.field private static final DISCOVERABLE_TIMEOUT_FIVE_MINUTES:I = 0x12c

.field static final DISCOVERABLE_TIMEOUT_NEVER:I = 0x0

.field private static final DISCOVERABLE_TIMEOUT_ONE_HOUR:I = 0xe10

.field private static final DISCOVERABLE_TIMEOUT_TWO_MINUTES:I = 0x78

.field private static final KEY_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "bt_discoverable_timeout"

.field private static final SYSTEM_PROPERTY_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "debug.bt.discoverable_time"

.field private static final TAG:Ljava/lang/String; = "BluetoothDiscoverableEnabler"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_FIVE_MINUTES:Ljava/lang/String; = "fivemin"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_NEVER:Ljava/lang/String; = "never"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_ONE_HOUR:Ljava/lang/String; = "onehour"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_TWO_MINUTES:Ljava/lang/String; = "twomin"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDiscoverable:Z

.field private final mDiscoveryPreference:Landroid/preference/Preference;

.field private final mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

.field private mNumberOfPairedDevices:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTimeoutSecs:I

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    invoke-virtual {p3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    return-void
.end method

.method private static formatTimeRemaining(I)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    div-int/lit8 v0, p0, 0x3c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v0, 0x3c

    sub-int v2, p0, v3

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDiscoverableTimeout()I
    .locals 5

    const/4 v3, -0x1

    iget v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    if-eq v2, v3, :cond_0

    iget v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    :goto_0
    return v0

    :cond_0
    const-string v2, "debug.bt.discoverable_time"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "bt_discoverable_timeout"

    const-string v4, "twomin"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    goto :goto_0

    :cond_2
    const-string v2, "onehour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0xe10

    goto :goto_1

    :cond_3
    const-string v2, "fivemin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x12c

    goto :goto_1

    :cond_4
    const/16 v0, 0x78

    goto :goto_1
.end method

.method private setEnabled(Z)V
    .locals 9

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v0, v3, v5

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    const-string v3, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabled(): enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setSummaryNotDiscoverable()V
    .locals 2

    iget v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mNumberOfPairedDevices:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v1, 0x7f0b02c2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v1, 0x7f0b02c1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateCountdownSummary()V
    .locals 10

    const-wide/16 v8, 0x3e8

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v4

    const/16 v6, 0x17

    if-eq v4, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settingsstock/bluetooth/LocalBluetoothPreferences;->getDiscoverableEndTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    goto :goto_0

    :cond_1
    sub-long v6, v2, v0

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-direct {p0, v5}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private updateTimerDisplay(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v2, 0x7f0b02c0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->formatTimeRemaining(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b02bf

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getDiscoverableTimeoutIndex()I
    .locals 2

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x12c -> :sswitch_0
        0xe10 -> :sswitch_1
    .end sparse-switch
.end method

.method handleModeChanged(I)V
    .locals 3

    const-string v0, "BluetoothDiscoverableEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleModeChanged(): mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->setSummaryNotDiscoverable()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0, v0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    goto :goto_0
.end method

.method setDiscoverableTimeout(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x78

    iput v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "twomin"

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bt_discoverable_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    return-void

    :pswitch_0
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "fivemin"

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xe10

    iput v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "onehour"

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "never"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setNumberOfPairedDevices(I)V
    .locals 1

    iput p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mNumberOfPairedDevices:I

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    return-void
.end method
