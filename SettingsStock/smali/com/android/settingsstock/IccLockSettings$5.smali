.class Lcom/android/settingsstock/IccLockSettings$5;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/IccLockSettings;->onResume()V
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

    iput-object p1, p0, Lcom/android/settingsstock/IccLockSettings$5;->this$0:Lcom/android/settingsstock/IccLockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings$5;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #getter for: Lcom/android/settingsstock/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v0}, Lcom/android/settingsstock/IccLockSettings;->access$700(Lcom/android/settingsstock/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings$5;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #getter for: Lcom/android/settingsstock/IccLockSettings;->mSimId:I
    invoke-static {v1}, Lcom/android/settingsstock/IccLockSettings;->access$600(Lcom/android/settingsstock/IccLockSettings;)I

    move-result v1

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    return-void
.end method
