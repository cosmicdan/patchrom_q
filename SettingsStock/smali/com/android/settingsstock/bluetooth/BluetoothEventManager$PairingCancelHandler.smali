.class Lcom/android/settingsstock/bluetooth/BluetoothEventManager$PairingCancelHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingsstock/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PairingCancelHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;Lcom/android/settingsstock/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    if-nez p3, :cond_0

    const-string v2, "BluetoothEventManager"

    const-string v3, "ACTION_PAIRING_CANCEL with no EXTRA_DEVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0b03dc

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothEventManager$PairingCancelHandler;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/android/settingsstock/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
