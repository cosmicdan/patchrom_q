.class final Lcom/android/settingsstock/bluetooth/HidProfile;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/bluetooth/HidProfile$1;,
        Lcom/android/settingsstock/bluetooth/HidProfile$InputDeviceServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "HID"

.field private static final ORDINAL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HidProfile"

.field private static V:Z


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingsstock/bluetooth/HidProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingsstock/bluetooth/HidProfile$InputDeviceServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/android/settingsstock/bluetooth/HidProfile;Lcom/android/settingsstock/bluetooth/HidProfile$1;)V

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingsstock/bluetooth/HidProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settingsstock/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settingsstock/bluetooth/HidProfile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mIsProfileReady:Z

    return p1
.end method

.method static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f020059

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f020057

    goto :goto_0

    :sswitch_1
    const v0, 0x7f02005b

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x540 -> :sswitch_0
        0x580 -> :sswitch_1
        0x5c0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    sget-boolean v1, Lcom/android/settingsstock/bluetooth/HidProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "HidProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HidProfile"

    const-string v2, "Error cleaning up HID proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    if-nez p1, :cond_0

    const v0, 0x7f020057

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/settingsstock/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    goto :goto_0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const v0, 0x7f0b03f4

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/bluetooth/HidProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {v0}, Lcom/android/settingsstock/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    :pswitch_1
    const v1, 0x7f0b040c

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0b0406

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "HID"

    return-object v0
.end method
