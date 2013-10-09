.class Lcom/android/settingsstock/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/CryptKeeperConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/CryptKeeperConfirm$1;->this$0:Lcom/android/settingsstock/CryptKeeperConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CryptKeeperConfirm"

    const-string v2, "MonkeyRunning"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/CryptKeeperConfirm$1;->this$0:Lcom/android/settingsstock/CryptKeeperConfirm;

    #getter for: Lcom/android/settingsstock/CryptKeeperConfirm;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settingsstock/CryptKeeperConfirm;->access$000(Lcom/android/settingsstock/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/CryptKeeperConfirm$1;->this$0:Lcom/android/settingsstock/CryptKeeperConfirm;

    #getter for: Lcom/android/settingsstock/CryptKeeperConfirm;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settingsstock/CryptKeeperConfirm;->access$000(Lcom/android/settingsstock/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "notify.deskclock.reset.alarms"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/CryptKeeperConfirm$1;->this$0:Lcom/android/settingsstock/CryptKeeperConfirm;

    invoke-virtual {v1}, Lcom/android/settingsstock/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settingsstock/CryptKeeperConfirm$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settingsstock/CryptKeeperConfirm$1;->this$0:Lcom/android/settingsstock/CryptKeeperConfirm;

    invoke-virtual {v1}, Lcom/android/settingsstock/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/CryptKeeperConfirm$1;->this$0:Lcom/android/settingsstock/CryptKeeperConfirm;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
