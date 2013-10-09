.class final Lcom/android/settingsstock/bluetooth/FtpProfile;
.super Ljava/lang/Object;
.source "FtpProfile.java"

# interfaces
.implements Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;


# static fields
.field static final NAME:Ljava/lang/String; = "FTP"

.field private static final ORDINAL:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FtpProfile"

.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

.field private static mService:Landroid/bluetooth/BluetoothProfileManager;

.field private static profile:Landroid/bluetooth/BluetoothProfileManager$Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexFileTransfer:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingsstock/bluetooth/FtpProfile;->UUIDS:[Landroid/os/ParcelUuid;

    sget-object v0, Landroid/bluetooth/BluetoothProfileManager$Profile;->Bluetooth_FTP_Client:Landroid/bluetooth/BluetoothProfileManager$Profile;

    sput-object v0, Lcom/android/settingsstock/bluetooth/FtpProfile;->profile:Landroid/bluetooth/BluetoothProfileManager$Profile;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FtpProfile"

    const-string v1, "[BT][FTP] Constructor of FtpProfile in Settings."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settingsstock/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    if-nez v0, :cond_0

    new-instance v0, Landroid/bluetooth/BluetoothFtp$Client;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothFtp$Client;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingsstock/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    :cond_0
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    sget-object v0, Lcom/android/settingsstock/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothFtp$Client;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    sget-object v0, Lcom/android/settingsstock/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothFtp$Client;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    sget-object v1, Lcom/android/settingsstock/bluetooth/FtpProfile;->mFtpClient:Landroid/bluetooth/BluetoothFtp$Client;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothFtp$Client;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    :cond_1
    packed-switch v0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    const v0, 0x7f02005c

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const v0, 0x7f0b0007

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/bluetooth/FtpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v1, 0x7f0b0009

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0b0008

    goto :goto_0
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/bluetooth/FtpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    sget-object v0, Lcom/android/settingsstock/bluetooth/FtpProfile;->mService:Landroid/bluetooth/BluetoothProfileManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "FTP"

    return-object v0
.end method
