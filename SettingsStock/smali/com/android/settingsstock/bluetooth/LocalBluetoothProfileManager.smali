.class final Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# static fields
.field static final BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final BPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field static final PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid; = null

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothProfileManager"

.field private static sInstance:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;


# instance fields
.field private mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

.field private mFtpProfile:Lcom/android/settingsstock/bluetooth/FtpProfile;

.field private mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

.field private final mHidProfile:Lcom/android/settingsstock/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

.field private mOppProfile:Lcom/android/settingsstock/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/settingsstock/bluetooth/PanProfile;

.field private final mPbapProfile:Lcom/android/settingsstock/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->BppReceiver:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->BPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->BipResponder:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->BIP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->HID_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    new-array v0, v3, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Proximity:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->PRX_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)V
    .locals 8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    iput-object p4, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5, p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;)V

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    invoke-virtual {v5, p0}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;)V

    invoke-virtual {p2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "LocalBluetoothProfileManager"

    const-string v6, "adapter uuid is not null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const-string v5, "LocalBluetoothProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    :cond_1
    new-instance v5, Lcom/android/settingsstock/bluetooth/HidProfile;

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v5, p1, v6}, Lcom/android/settingsstock/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;)V

    iput-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingsstock/bluetooth/HidProfile;

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingsstock/bluetooth/HidProfile;

    const-string v6, "HID"

    const-string v7, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/settingsstock/bluetooth/PanProfile;

    invoke-direct {v5, p1}, Lcom/android/settingsstock/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingsstock/bluetooth/PanProfile;

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingsstock/bluetooth/PanProfile;

    const-string v6, "PAN"

    const-string v7, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/settingsstock/bluetooth/PbapServerProfile;

    invoke-direct {v5, p1}, Lcom/android/settingsstock/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingsstock/bluetooth/PbapServerProfile;

    new-instance v5, Lcom/android/settingsstock/bluetooth/FtpProfile;

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settingsstock/bluetooth/FtpProfile;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/settingsstock/bluetooth/FtpProfile;

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/settingsstock/bluetooth/FtpProfile;

    const-string v6, "FTP"

    const-string v7, "android.bluetooth.ftp.action.STATE_CHANGED"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "LocalBluetoothProfileManager"

    const-string v6, "LocalBluetoothProfileManager construction complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private addPanProfile(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingsstock/bluetooth/BluetoothEventManager$Handler;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addProfile(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingsstock/bluetooth/BluetoothEventManager$Handler;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method addServiceListener(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-interface {v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    invoke-interface {v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getA2dpProfile()Lcom/android/settingsstock/bluetooth/A2dpProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getHeadsetProfile()Lcom/android/settingsstock/bluetooth/HeadsetProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getPbapProfile()Lcom/android/settingsstock/bluetooth/PbapServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingsstock/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settingsstock/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settingsstock/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    if-nez v0, :cond_2

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingsstock/bluetooth/OppProfile;

    if-nez v0, :cond_3

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settingsstock/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settingsstock/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingsstock/bluetooth/OppProfile;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingsstock/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingsstock/bluetooth/OppProfile;

    if-eqz v0, :cond_3

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "update profiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "uuid is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Before update mprofiles, updateLocalProfiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "mHeadsetProfile is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, Lcom/android/settingsstock/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "A2dpProfile is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingsstock/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingsstock/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingsstock/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingsstock/bluetooth/HidProfile;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingsstock/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingsstock/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p5, :cond_8

    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingsstock/bluetooth/PanProfile;

    if-nez v0, :cond_a

    :cond_9
    if-eqz p5, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingsstock/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingsstock/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_b
    sget-object v0, Lcom/android/settingsstock/bluetooth/FtpProfile;->UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/settingsstock/bluetooth/FtpProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/settingsstock/bluetooth/FtpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/settingsstock/bluetooth/FtpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
