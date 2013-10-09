.class public final Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalBluetoothManager"

.field private static sInstance:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

.field private final mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Landroid/preference/PreferenceFragment;

.field private final mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    new-instance v0, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    new-instance v0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;
    .locals 4

    const-class v3, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v0, v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v2, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    :cond_1
    sget-object v2, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method getCachedDeviceManager()Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDiscoverableEnabler()Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    return-object v0
.end method

.method getEventManager()Lcom/android/settingsstock/bluetooth/BluetoothEventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method public getForegroundActivity()Landroid/preference/PreferenceFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/preference/PreferenceFragment;

    return-object v0
.end method

.method getProfileManager()Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method isForegroundActivity()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/preference/PreferenceFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDiscoverableEnabler(Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    return-void
.end method

.method declared-synchronized setForegroundActivity(Landroid/preference/PreferenceFragment;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/preference/PreferenceFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/preference/PreferenceFragment;

    if-eqz v0, :cond_0

    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/preference/PreferenceFragment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
