.class Lcom/android/settingsstock/bluetooth/BluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/bluetooth/BluetoothEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    #getter for: Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->access$000(Lcom/android/settingsstock/bluetooth/BluetoothEnabler;)Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const-string v1, "BluetoothEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothAdapter state changed to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    return-void
.end method
