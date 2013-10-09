.class Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;
.super Ljava/lang/Object;
.source "SimStatusGemini.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/deviceinfo/SimStatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/SimStatusGemini;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/SimStatusGemini;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->access$100(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->access$100(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/SimStatusGemini;

    #getter for: Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->access$100(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const-string v1, "Gemini_SimStatus"

    const-string v2, "mCell Mgr Result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/SimStatusGemini;

    const/4 v2, 0x1

    #setter for: Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z
    invoke-static {v1, v2}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->access$202(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;Z)Z

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/SimStatusGemini;

    invoke-virtual {v1}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/SimStatusGemini;

    const/4 v2, 0x0

    #setter for: Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z
    invoke-static {v1, v2}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->access$302(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;Z)Z

    goto :goto_0
.end method
