.class final Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/bluetooth/HeadsetProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/bluetooth/HeadsetProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/bluetooth/HeadsetProfile;Lcom/android/settingsstock/bluetooth/HeadsetProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settingsstock/bluetooth/HeadsetProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6

    invoke-static {}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HeadsetProfile"

    const-string v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    #setter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3, p2}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$102(Lcom/android/settingsstock/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$100(Lcom/android/settingsstock/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$200(Lcom/android/settingsstock/bluetooth/HeadsetProfile;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "HeadsetProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HeadsetProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$200(Lcom/android/settingsstock/bluetooth/HeadsetProfile;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;
    invoke-static {v4}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$300(Lcom/android/settingsstock/bluetooth/HeadsetProfile;)Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v5}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$400(Lcom/android/settingsstock/bluetooth/HeadsetProfile;)Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;I)V

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v3}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$400(Lcom/android/settingsstock/bluetooth/HeadsetProfile;)Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    const/4 v4, 0x1

    #setter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mIsProfileReady:Z
    invoke-static {v3, v4}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$502(Lcom/android/settingsstock/bluetooth/HeadsetProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    invoke-static {}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadsetProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    #getter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v0}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$400(Lcom/android/settingsstock/bluetooth/HeadsetProfile;)Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settingsstock/bluetooth/HeadsetProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/bluetooth/HeadsetProfile;->access$502(Lcom/android/settingsstock/bluetooth/HeadsetProfile;Z)Z

    return-void
.end method
