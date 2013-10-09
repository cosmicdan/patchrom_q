.class Lcom/android/settingsstock/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
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
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;Lcom/android/settingsstock/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;
    invoke-static {v3}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->access$1000(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/bluetooth/BluetoothCallback;

    invoke-interface {v0, v2}, Lcom/android/settingsstock/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settingsstock/bluetooth/BluetoothEventManager;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    return-void
.end method
