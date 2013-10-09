.class Lcom/android/settingsstock/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/IccLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/IccLockSettings$2;->this$0:Lcom/android/settingsstock/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings$2;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #getter for: Lcom/android/settingsstock/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settingsstock/IccLockSettings;->access$400(Lcom/android/settingsstock/IccLockSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/IccLockSettings$2;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #getter for: Lcom/android/settingsstock/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settingsstock/IccLockSettings;->access$400(Lcom/android/settingsstock/IccLockSettings;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "IccLockSettings"

    const-string v3, "receive ACTION_SIM_INFO_UPDATE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings$2;->this$0:Lcom/android/settingsstock/IccLockSettings;

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hot swap_simList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings$2;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #calls: Lcom/android/settingsstock/IccLockSettings;->gobackSettings()V
    invoke-static {v2}, Lcom/android/settingsstock/IccLockSettings;->access$500(Lcom/android/settingsstock/IccLockSettings;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v3, p0, Lcom/android/settingsstock/IccLockSettings$2;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #getter for: Lcom/android/settingsstock/IccLockSettings;->mSimId:I
    invoke-static {v3}, Lcom/android/settingsstock/IccLockSettings;->access$600(Lcom/android/settingsstock/IccLockSettings;)I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings$2;->this$0:Lcom/android/settingsstock/IccLockSettings;

    invoke-virtual {v2}, Lcom/android/settingsstock/IccLockSettings;->finish()V

    goto :goto_0
.end method
