.class Lcom/android/settingsstock/DataUsageSummary$9;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$1700(Lcom/android/settingsstock/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v1, p2

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$1800(Lcom/android/settingsstock/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data enable check change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "sim1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->onDataEnableChangeGemini(ZI)V
    invoke-static {v2, v1, v5}, Lcom/android/settingsstock/DataUsageSummary;->access$1900(Lcom/android/settingsstock/DataUsageSummary;ZI)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v6}, Lcom/android/settingsstock/DataUsageSummary;->access$800(Lcom/android/settingsstock/DataUsageSummary;Z)V

    goto :goto_0

    :cond_2
    const-string v2, "sim2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->onDataEnableChangeGemini(ZI)V
    invoke-static {v2, v1, v6}, Lcom/android/settingsstock/DataUsageSummary;->access$1900(Lcom/android/settingsstock/DataUsageSummary;ZI)V

    goto :goto_1

    :cond_3
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->getSimIndicatorState(I)I
    invoke-static {v2, v5}, Lcom/android/settingsstock/DataUsageSummary;->access$2000(Lcom/android/settingsstock/DataUsageSummary;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$2100(Lcom/android/settingsstock/DataUsageSummary;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v2

    const/16 v3, 0x12e

    invoke-virtual {v2, v5, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    const-string v2, "DataUsage"

    const-string v3, "Data enable check change request pin single card"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$1400(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v2, v6}, Lcom/android/settingsstock/DataUsageSummary;->access$2200(Lcom/android/settingsstock/DataUsageSummary;Z)V

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->isNeedtoShowRoamingMsg()Z
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$2300(Lcom/android/settingsstock/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settingsstock/DataUsageSummary;->access$2400()Lcom/android/settingsstock/ext/ISimRoamingExt;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settingsstock/ext/ISimRoamingExt;->showDialog(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$9;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settingsstock/DataUsageSummary;)V

    goto :goto_1
.end method
