.class Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/TetherSettings;Lcom/android/settingsstock/TetherSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settingsstock/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TetherChangeReceiver - onReceive, action is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "availableArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v8, "activeArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v8, "erroredArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    const-string v9, "UnTetherDone"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/settingsstock/TetherSettings;->mUsbUnTetherDone:Z
    invoke-static {v8, v9}, Lcom/android/settingsstock/TetherSettings;->access$102(Lcom/android/settingsstock/TetherSettings;Z)Z

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    const-string v9, "TetherDone"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/settingsstock/TetherSettings;->mUsbTetherDone:Z
    invoke-static {v8, v9}, Lcom/android/settingsstock/TetherSettings;->access$202(Lcom/android/settingsstock/TetherSettings;Z)Z

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    const-string v9, "TetherFail"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/settingsstock/TetherSettings;->mUsbTetherFail:Z
    invoke-static {v8, v9}, Lcom/android/settingsstock/TetherSettings;->access$302(Lcom/android/settingsstock/TetherSettings;Z)Z

    const-string v8, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUsbUnTetherDone? :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #getter for: Lcom/android/settingsstock/TetherSettings;->mUsbUnTetherDone:Z
    invoke-static {v10}, Lcom/android/settingsstock/TetherSettings;->access$100(Lcom/android/settingsstock/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , mUsbTetherDonel? :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #getter for: Lcom/android/settingsstock/TetherSettings;->mUsbTetherDone:Z
    invoke-static {v10}, Lcom/android/settingsstock/TetherSettings;->access$200(Lcom/android/settingsstock/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , tether fail? :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #getter for: Lcom/android/settingsstock/TetherSettings;->mUsbTetherFail:Z
    invoke-static {v10}, Lcom/android/settingsstock/TetherSettings;->access$300(Lcom/android/settingsstock/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    #calls: Lcom/android/settingsstock/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v11, v8, v9, v10}, Lcom/android/settingsstock/TetherSettings;->access$400(Lcom/android/settingsstock/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #setter for: Lcom/android/settingsstock/TetherSettings;->mMassStorageActive:Z
    invoke-static {v8, v12}, Lcom/android/settingsstock/TetherSettings;->access$502(Lcom/android/settingsstock/TetherSettings;Z)Z

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #calls: Lcom/android/settingsstock/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$600(Lcom/android/settingsstock/TetherSettings;)V

    goto :goto_0

    :cond_2
    const-string v8, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #setter for: Lcom/android/settingsstock/TetherSettings;->mMassStorageActive:Z
    invoke-static {v8, v11}, Lcom/android/settingsstock/TetherSettings;->access$502(Lcom/android/settingsstock/TetherSettings;Z)Z

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #calls: Lcom/android/settingsstock/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$600(Lcom/android/settingsstock/TetherSettings;)V

    goto :goto_0

    :cond_3
    const-string v8, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    const-string v9, "connected"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/settingsstock/TetherSettings;->mUsbConnected:Z
    invoke-static {v8, v9}, Lcom/android/settingsstock/TetherSettings;->access$702(Lcom/android/settingsstock/TetherSettings;Z)Z

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    const-string v9, "configured"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/settingsstock/TetherSettings;->mUsbConfigured:Z
    invoke-static {v8, v9}, Lcom/android/settingsstock/TetherSettings;->access$802(Lcom/android/settingsstock/TetherSettings;Z)Z

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    const-string v9, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z
    invoke-static {v8, v9}, Lcom/android/settingsstock/TetherSettings;->access$902(Lcom/android/settingsstock/TetherSettings;Z)Z

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    const-string v9, "USB_IS_PC_KNOW_ME"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/settingsstock/TetherSettings;->mIsPcKnowMe:Z
    invoke-static {v8, v9}, Lcom/android/settingsstock/TetherSettings;->access$1002(Lcom/android/settingsstock/TetherSettings;Z)Z

    const-string v8, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TetherChangeReceiver - ACTION_USB_STATE mUsbConnected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #getter for: Lcom/android/settingsstock/TetherSettings;->mUsbConnected:Z
    invoke-static {v10}, Lcom/android/settingsstock/TetherSettings;->access$700(Lcom/android/settingsstock/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mUsbConfigured:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #getter for: Lcom/android/settingsstock/TetherSettings;->mUsbConfigured:Z
    invoke-static {v10}, Lcom/android/settingsstock/TetherSettings;->access$800(Lcom/android/settingsstock/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mUsbHwDisconnected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #getter for: Lcom/android/settingsstock/TetherSettings;->mUsbHwDisconnected:Z
    invoke-static {v10}, Lcom/android/settingsstock/TetherSettings;->access$900(Lcom/android/settingsstock/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #calls: Lcom/android/settingsstock/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$600(Lcom/android/settingsstock/TetherSettings;)V

    goto/16 :goto_0

    :cond_4
    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #getter for: Lcom/android/settingsstock/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$1100(Lcom/android/settingsstock/TetherSettings;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "android.bluetooth.adapter.extra.STATE"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #calls: Lcom/android/settingsstock/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$600(Lcom/android/settingsstock/TetherSettings;)V

    goto/16 :goto_0

    :sswitch_0
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #getter for: Lcom/android/settingsstock/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$000(Lcom/android/settingsstock/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v12}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #setter for: Lcom/android/settingsstock/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v8, v11}, Lcom/android/settingsstock/TetherSettings;->access$1102(Lcom/android/settingsstock/TetherSettings;Z)Z

    :cond_6
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #getter for: Lcom/android/settingsstock/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$1200(Lcom/android/settingsstock/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDun;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v12}, Landroid/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #setter for: Lcom/android/settingsstock/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v8, v11}, Lcom/android/settingsstock/TetherSettings;->access$1102(Lcom/android/settingsstock/TetherSettings;Z)Z

    goto :goto_1

    :sswitch_1
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #setter for: Lcom/android/settingsstock/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v8, v11}, Lcom/android/settingsstock/TetherSettings;->access$1102(Lcom/android/settingsstock/TetherSettings;Z)Z

    goto :goto_1

    :cond_7
    const-string v8, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "apn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v8, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v8, "TetherSettings"

    const-string v9, "receive USB_DATA_STATE"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dataApnKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "internet"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v7, v8, :cond_8

    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #setter for: Lcom/android/settingsstock/TetherSettings;->mUsbInternetSharing:Z
    invoke-static {v8, v12}, Lcom/android/settingsstock/TetherSettings;->access$1302(Lcom/android/settingsstock/TetherSettings;Z)Z

    :goto_2
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #calls: Lcom/android/settingsstock/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$600(Lcom/android/settingsstock/TetherSettings;)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #setter for: Lcom/android/settingsstock/TetherSettings;->mUsbInternetSharing:Z
    invoke-static {v8, v11}, Lcom/android/settingsstock/TetherSettings;->access$1302(Lcom/android/settingsstock/TetherSettings;Z)Z

    goto :goto_2

    :cond_9
    const-string v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "wifi_state"

    const/16 v9, 0xe

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_a

    const/16 v8, 0xb

    if-ne v7, v8, :cond_0

    :cond_a
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #calls: Lcom/android/settingsstock/TetherSettings;->updateIpv6Preference()V
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$1400(Lcom/android/settingsstock/TetherSettings;)V

    goto/16 :goto_0

    :cond_b
    const-string v8, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_c
    iget-object v8, p0, Lcom/android/settingsstock/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settingsstock/TetherSettings;

    #calls: Lcom/android/settingsstock/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/settingsstock/TetherSettings;->access$600(Lcom/android/settingsstock/TetherSettings;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
