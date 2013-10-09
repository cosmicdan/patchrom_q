.class Lcom/android/settingsstock/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/deviceinfo/UsbSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #calls: Lcom/android/settingsstock/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$000(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    const-string v5, "accessory"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #setter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v2, v5}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$102(Lcom/android/settingsstock/deviceinfo/UsbSettings;Z)Z

    const-string v2, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsbAccessoryMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v6}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$100(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    const-string v2, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    #setter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v5, v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$202(Lcom/android/settingsstock/deviceinfo/UsbSettings;Z)Z

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    const-string v5, "USB_IS_PC_KNOW_ME"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #setter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsPcKnowMe:Z
    invoke-static {v2, v5}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$302(Lcom/android/settingsstock/deviceinfo/UsbSettings;Z)Z

    const-string v2, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ACTION_USB_STATE], mIsHwUsbConnected :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v6}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$200(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsPcKnowMe :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsPcKnowMe:Z
    invoke-static {v6}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$300(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$200(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$400(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsPcKnowMe:Z
    invoke-static {v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$300(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$400(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "charging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #setter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCanUpdateToggle:Z
    invoke-static {v2, v3}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$502(Lcom/android/settingsstock/deviceinfo/UsbSettings;Z)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCanUpdateToggle:Z
    invoke-static {v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$500(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "UsbSettings"

    const-string v3, "[Update Toggle - Other Functions]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #calls: Lcom/android/settingsstock/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$600(Lcom/android/settingsstock/deviceinfo/UsbSettings;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    const-string v3, "plugged"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPlugType:I
    invoke-static {v2, v3}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$702(Lcom/android/settingsstock/deviceinfo/UsbSettings;I)I

    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACTION_BATTERY_CHANGED], mPlugType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPlugType:I
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$700(Lcom/android/settingsstock/deviceinfo/UsbSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPlugType:I
    invoke-static {v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$700(Lcom/android/settingsstock/deviceinfo/UsbSettings;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const-string v2, "charging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "UsbSettings"

    const-string v3, "[Update Toggle - USB Charging]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    #calls: Lcom/android/settingsstock/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->access$600(Lcom/android/settingsstock/deviceinfo/UsbSettings;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v4

    goto/16 :goto_0

    :cond_5
    const-string v2, "charging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UsbSettings"

    const-string v3, "[Finish Activity]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->finish()V

    goto :goto_1

    :cond_6
    const-string v2, "UsbSettings"

    const-string v3, "[Finish Activity - USB Charging Unplugged]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settingsstock/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->finish()V

    goto :goto_2
.end method
