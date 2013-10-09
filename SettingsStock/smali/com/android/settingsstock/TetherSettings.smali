.class public Lcom/android/settingsstock/TetherSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_TETHERING:I = 0x2

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final INVALID:I = -0x1

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TetherSettings"

.field private static final TETHERED_IPV6:Ljava/lang/String; = "tethered_ipv6"

.field private static final TETHER_APN_SETTING:Ljava/lang/String; = "tether_apn_settings"

.field private static final USB_DATA_STATE:Ljava/lang/String; = "mediatek.intent.action.USB_DATA_STATE"

.field private static final USB_TETHERING:I = 0x1

.field private static final USB_TETHERING_TYPE:Ljava/lang/String; = "usb_tethering_type"

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_SWITCH_SETTINGS:Ljava/lang/String; = "wifi_tether_settings"


# instance fields
.field private mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothDun;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mBtErrorIpv4:I

.field private mBtErrorIpv6:I

.field mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

.field private mIsPcKnowMe:Z

.field private mMassStorageActive:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherApnSetting:Landroid/preference/Preference;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherIpv6:Landroid/preference/ListPreference;

.field private mUsbConfigured:Z

.field private mUsbConnected:Z

.field private mUsbHwDisconnected:Z

.field private mUsbInternetSharing:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherCheckEnable:Z

.field private mUsbTetherDone:Z

.field private mUsbTetherFail:Z

.field private mUsbTetherType:Landroid/preference/ListPreference;

.field private mUsbTethering:Z

.field private mUsbUnTetherDone:Z

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settingsstock/wifi/WifiApEnabler;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean v1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherCheckEnable:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbUnTetherDone:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherDone:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherFail:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mIsPcKnowMe:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbInternetSharing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChoice:I

    new-instance v0, Lcom/android/settingsstock/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/TetherSettings$1;-><init>(Lcom/android/settingsstock/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbUnTetherDone:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbUnTetherDone:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settingsstock/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settingsstock/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbInternetSharing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settingsstock/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/TetherSettings;->updateIpv6Preference()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherDone:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settingsstock/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherFail:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherFail:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settingsstock/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingsstock/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settingsstock/TetherSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settingsstock/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settingsstock/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbConfigured:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbConfigured:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settingsstock/TetherSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settingsstock/TetherSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    array-length v5, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    move-object v1, p1

    array-length v6, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_2
    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    const-string v1, "TetherSettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isUMSEnabled()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    const-string v2, "TetherSettings"

    const-string v3, " mMountService is null, return"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Util:RemoteException when isUsbMassStorageEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b05d8

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5

    const/4 v4, 0x0

    iput p1, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChoice:I

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/android/settingsstock/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 8

    const/4 v6, 0x1

    iget v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChoice:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    iput-boolean v6, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothEnableForTether:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b02eb

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDun;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    :cond_2
    const v4, 0x7f0b05da

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv4:I

    iget v7, p0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv6:I

    invoke-virtual {p0, v6, v7}, Lcom/android/settingsstock/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/settingsstock/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 23

    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv4:I

    const/16 v19, 0x10

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv6:I

    move-object/from16 v4, p1

    array-length v14, v4

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v17, v4, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v15, v5

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v15, :cond_2

    aget-object v16, v5, v12

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv4:I

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v19

    and-int/lit8 v19, v19, 0xf

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv4:I

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv6:I

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv6:I

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    move-object/from16 v4, p3

    array-length v14, v4

    const/4 v12, 0x0

    move v13, v12

    :goto_2
    if-ge v13, v14, :cond_6

    aget-object v17, v4, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v15, v5

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v15, :cond_5

    aget-object v16, v5, v12

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/4 v7, 0x1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_2

    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-nez v3, :cond_7

    :goto_4
    return-void

    :cond_7
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v10

    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "btState = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v10, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0b02ec

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    :cond_8
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v10, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0b02eb

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothPan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDun;

    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v10, v0, :cond_11

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v19

    if-nez v19, :cond_b

    :cond_a
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_11

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/4 v9, 0x0

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bluetooth Tethered PAN devices = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDun;->getConnectedDevices()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v19

    add-int v9, v9, v19

    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bluetooth tethered total devices = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v9, v0, :cond_e

    const v19, 0x7f0b05dc

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv4:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv6:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_f

    const v19, 0x7f0b05db

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv4:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv6:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_f
    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0b05de

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_4

    :cond_10
    const v19, 0x7f0b05da

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv4:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/TetherSettings;->mBtErrorIpv6:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0b05dd

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_4
.end method

.method private updateIpv6Preference()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v2}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheringIpv6Enable()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1
.end method

.method private updateState()V
    .locals 5

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/android/settingsstock/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbInternetSharing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const-string v0, "TetherSettings"

    const-string v1, "usb internet is connected, return"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======> updateState - mUsbConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbConfigured:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbHwDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbUnTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbUnTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tetherfail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsPcKnowMe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/TetherSettings;->mIsPcKnowMe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbConfigured:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherFail:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mIsPcKnowMe:Z

    if-nez v0, :cond_2

    :cond_1
    iput-boolean v4, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherCheckEnable:Z

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingsstock/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingsstock/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settingsstock/TetherSettings;->updateIpv6Preference()V

    goto/16 :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbUnTetherDone:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherFail:Z

    if-eqz v0, :cond_2

    :cond_5
    iput-boolean v4, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_1
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21

    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const/4 v12, 0x1

    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x10

    move-object/from16 v2, p1

    array-length v7, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v10, v2, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_3

    aget-object v9, v3, v5

    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    if-eqz v4, :cond_1

    if-nez v14, :cond_0

    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    and-int/lit8 v14, v18, 0xf

    :cond_0
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xf0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    :cond_4
    const/16 v17, 0x0

    move-object/from16 v2, p2

    array-length v7, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_3
    if-ge v6, v7, :cond_7

    aget-object v10, v2, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v3

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_6

    aget-object v9, v3, v5

    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v17, 0x1

    if-eqz v4, :cond_5

    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v15, v0, :cond_5

    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xf0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    move-object/from16 v2, p3

    array-length v7, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_5
    if-ge v6, v7, :cond_a

    aget-object v10, v2, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v8, :cond_9

    aget-object v9, v3, v5

    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v16, 0x1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_5

    :cond_a
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbErrored: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbAvailable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_b

    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState: usbTethered ! mUsbTether checkbox setEnabled & checked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const v18, 0x7f0b05d5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settingsstock/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered - mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :cond_b
    if-eqz v12, :cond_f

    if-eqz v14, :cond_c

    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v14, v0, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05d4

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState - mUsbTetherCheckEnable, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_d
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbAvailable - mUsbConfigured:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbConfigured:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTethering: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05d8

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_f
    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05d8

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05d6

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbConfigured:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05d7

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    :goto_9
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState- usbAvailable- mUsbHwDisconnected:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_13
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState - else, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b05d4

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_9
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f0b0939

    return v0
.end method

.method public getIPV6String(II)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x20

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    const-string v1, "1"

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[errorIpv4 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[errorIpv6 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-ne p2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/TetherSettings;->startTethering()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iput v1, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChoice:I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v8, 0x7f05003d

    invoke-virtual {p0, v8}, Lcom/android/settingsstock/TetherSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settingsstock/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/ISettingsMiscExt;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settingsstock/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v8, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    const-string v8, "wifi_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settingsstock/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v8, v10}, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;->setChecked(Z)V

    const-string v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settingsstock/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Lcom/android/settingsstock/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const-string v8, "tether_apn_settings"

    invoke-virtual {p0, v8}, Lcom/android/settingsstock/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mTetherApnSetting:Landroid/preference/Preference;

    const-string v8, "tethered_ipv6"

    invoke-virtual {p0, v8}, Lcom/android/settingsstock/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settingsstock/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    const-string v8, "usb_tethering_type"

    invoke-virtual {p0, v8}, Lcom/android/settingsstock/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_4

    move v6, v9

    :goto_0
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    move v7, v9

    :goto_1
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_6

    move v2, v9

    :goto_2
    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_7

    new-instance v8, Lcom/android/settingsstock/wifi/WifiApEnabler;

    iget-object v11, p0, Lcom/android/settingsstock/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-direct {v8, v0, v11}, Lcom/android/settingsstock/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;)V

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mWifiApEnabler:Lcom/android/settingsstock/wifi/WifiApEnabler;

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mWifiApEnabler:Lcom/android/settingsstock/wifi/WifiApEnabler;

    invoke-virtual {v8, p0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->setTetherSettings(Lcom/android/settingsstock/TetherSettings;)V

    :goto_3
    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_4
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings;->mTetherApnSetting:Landroid/preference/Preference;

    invoke-interface {v8, v9, v10}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->removeTetherApnSettings(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settingsstock/TetherSettings;->getMountService()Landroid/os/storage/IMountService;

    return-void

    :cond_4
    move v6, v10

    goto :goto_0

    :cond_5
    move v7, v10

    goto :goto_1

    :cond_6
    move v2, v10

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settingsstock/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothPan;

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDun;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mWifiApEnabler:Lcom/android/settingsstock/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mWifiApEnabler:Lcom/android/settingsstock/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiApEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TetherSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "tethered_ipv6"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    if-ne v2, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setTetheringIpv6Enable(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return v5

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const-string v4, "usb_tethering_type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "usb_tethering_type"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07008e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v4, "TetherSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange USB_TETHERING_TYPE value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v11, 0x0

    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/settingsstock/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_4

    iget-boolean v10, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iput-boolean v9, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    iput-boolean v11, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherCheckEnable:Z

    if-eqz v7, :cond_2

    iput-boolean v11, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherDone:Z

    :goto_0
    iput-boolean v11, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherFail:Z

    const-string v10, "TetherSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceTreeClick - setusbTethering("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") mUsbTethering:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTethering:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    invoke-direct {p0, v9}, Lcom/android/settingsstock/TetherSettings;->startProvisioningIfNecessary(I)V

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v9

    :cond_1
    return v9

    :cond_2
    iput-boolean v11, p0, Lcom/android/settingsstock/TetherSettings;->mUsbUnTetherDone:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settingsstock/TetherSettings;->setUsbTethering(Z)V

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_a

    iget-object v9, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/settingsstock/TetherSettings;->startProvisioningIfNecessary(I)V

    :goto_2
    invoke-direct {p0}, Lcom/android/settingsstock/TetherSettings;->updateIpv6Preference()V

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/settingsstock/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_6

    const/4 v5, 0x1

    :cond_6
    iget-object v9, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v11}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    :cond_7
    iget-object v9, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDun;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v11}, Landroid/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    :cond_8
    if-eqz v5, :cond_9

    iget-object v9, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0b05de

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    :cond_9
    iget-object v9, p0, Lcom/android/settingsstock/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0b05dd

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_2

    :cond_a
    iget-object v9, p0, Lcom/android/settingsstock/TetherSettings;->mTetherApnSetting:Landroid/preference/Preference;

    if-ne p2, v9, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.phone"

    const-string v10, "com.mediatek.settings.MultipleSimActivity"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "TARGET_CLASS"

    const-string v10, "com.android.settingsstock.TetherApnSettings"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/TetherSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mWifiApEnabler:Lcom/android/settingsstock/wifi/WifiApEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mWifiApEnabler:Lcom/android/settingsstock/wifi/WifiApEnabler;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/WifiApEnabler;->resume()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStart()V
    .locals 7

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settingsstock/TetherSettings;->isUMSEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settingsstock/TetherSettings;->mMassStorageActive:Z

    const-string v4, "TetherSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMassStorageActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settingsstock/TetherSettings;->mMassStorageActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settingsstock/TetherSettings;Lcom/android/settingsstock/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "file"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_tethering_type"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/TetherSettings;->updateState()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
