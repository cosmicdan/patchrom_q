.class Lcom/android/settingsstock/deviceinfo/Memory$8;
.super Ljava/lang/Thread;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/deviceinfo/Memory;->doUnmount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/Memory;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/deviceinfo/Memory;Landroid/os/storage/IMountService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/Memory$8;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    iput-object p2, p0, Lcom/android/settingsstock/deviceinfo/Memory$8;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmountVolume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settingsstock/deviceinfo/Memory;->access$1100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory$8;->val$mountService:Landroid/os/storage/IMountService;

    invoke-static {}, Lcom/android/settingsstock/deviceinfo/Memory;->access$1100()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory$8;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    #calls: Lcom/android/settingsstock/deviceinfo/Memory;->showRemoveSDNotification()V
    invoke-static {v1}, Lcom/android/settingsstock/deviceinfo/Memory;->access$1200(Lcom/android/settingsstock/deviceinfo/Memory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory$8;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    #getter for: Lcom/android/settingsstock/deviceinfo/Memory;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settingsstock/deviceinfo/Memory;->access$1300(Lcom/android/settingsstock/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
