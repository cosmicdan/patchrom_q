.class Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;

    #getter for: Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->access$000(Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;

    #calls: Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->dismissDialog()V
    invoke-static {v2}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->access$100(Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;)V

    :cond_0
    return-void
.end method
