.class Lcom/android/settingsstock/DataUsageSummary$17;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;


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

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$17;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 2

    const-string v0, "DataUsage"

    const-string v1, "onInspectRangeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$17;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3300(Lcom/android/settingsstock/DataUsageSummary;)V

    return-void
.end method

.method public onLimitChanged()V
    .locals 5

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$17;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$3200(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/widget/ChartDataUsageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingsstock/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v0

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLimitChanged(),limitBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-string v2, "DataUsage"

    const-string v3, "set limitBytes = 0 , when it < 1MB && != 0"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$17;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v2, v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->access$2600(Lcom/android/settingsstock/DataUsageSummary;J)V

    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$17;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$17;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->access$3200(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingsstock/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/settingsstock/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settingsstock/DataUsageSummary;->access$4200(Lcom/android/settingsstock/DataUsageSummary;J)V

    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$17;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settingsstock/DataUsageSummary;)V

    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$17;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settingsstock/DataUsageSummary;)V

    return-void
.end method
