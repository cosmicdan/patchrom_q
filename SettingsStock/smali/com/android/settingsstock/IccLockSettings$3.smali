.class Lcom/android/settingsstock/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/settingsstock/IccLockSettings$3;->this$0:Lcom/android/settingsstock/IccLockSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings$3;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #getter for: Lcom/android/settingsstock/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settingsstock/IccLockSettings;->access$700(Lcom/android/settingsstock/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings$3;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #getter for: Lcom/android/settingsstock/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settingsstock/IccLockSettings;->access$700(Lcom/android/settingsstock/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings$3;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #getter for: Lcom/android/settingsstock/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/settingsstock/IccLockSettings;->access$700(Lcom/android/settingsstock/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const-string v1, "IccLockSettings"

    const-string v2, "mCell Mgr Result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings$3;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #setter for: Lcom/android/settingsstock/IccLockSettings;->mIsShouldBeFinished:Z
    invoke-static {v1, v3}, Lcom/android/settingsstock/IccLockSettings;->access$802(Lcom/android/settingsstock/IccLockSettings;Z)Z

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings$3;->this$0:Lcom/android/settingsstock/IccLockSettings;

    invoke-virtual {v1}, Lcom/android/settingsstock/IccLockSettings;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "IccLockSettings"

    const-string v2, "mServiceComplete + Enable mPinToggle"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings$3;->this$0:Lcom/android/settingsstock/IccLockSettings;

    #getter for: Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settingsstock/IccLockSettings;->access$900(Lcom/android/settingsstock/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings$3;->this$0:Lcom/android/settingsstock/IccLockSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/settingsstock/IccLockSettings;->mIsUnlockFollow:Z
    invoke-static {v1, v2}, Lcom/android/settingsstock/IccLockSettings;->access$1002(Lcom/android/settingsstock/IccLockSettings;Z)Z

    goto :goto_0
.end method
