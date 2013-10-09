.class Lcom/android/settingsstock/EraseAct$1;
.super Ljava/lang/Object;
.source "EraseAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/EraseAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/EraseAct;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/EraseAct;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/EraseAct$1;->this$0:Lcom/android/settingsstock/EraseAct;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/EraseAct$1;->this$0:Lcom/android/settingsstock/EraseAct;

    #getter for: Lcom/android/settingsstock/EraseAct;->mEraseSdCard:Z
    invoke-static {v1}, Lcom/android/settingsstock/EraseAct;->access$000(Lcom/android/settingsstock/EraseAct;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "tianming test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEraseSdCard>>>>>>>>>>true:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/EraseAct$1;->this$0:Lcom/android/settingsstock/EraseAct;

    #getter for: Lcom/android/settingsstock/EraseAct;->mEraseSdCard:Z
    invoke-static {v3}, Lcom/android/settingsstock/EraseAct;->access$000(Lcom/android/settingsstock/EraseAct;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/EraseAct$1;->this$0:Lcom/android/settingsstock/EraseAct;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/EraseAct;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string v1, "tianming test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEraseSdCard>>>>>>>>>>false:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/EraseAct$1;->this$0:Lcom/android/settingsstock/EraseAct;

    #getter for: Lcom/android/settingsstock/EraseAct;->mEraseSdCard:Z
    invoke-static {v3}, Lcom/android/settingsstock/EraseAct;->access$000(Lcom/android/settingsstock/EraseAct;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/EraseAct$1;->this$0:Lcom/android/settingsstock/EraseAct;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/EraseAct;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
