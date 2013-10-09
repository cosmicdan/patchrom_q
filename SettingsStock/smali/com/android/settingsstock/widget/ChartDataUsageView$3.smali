.class Lcom/android/settingsstock/widget/ChartDataUsageView$3;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settingsstock/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/widget/ChartDataUsageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settingsstock/widget/ChartSweepView;Z)V
    .locals 2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #calls: Lcom/android/settingsstock/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settingsstock/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$500(Lcom/android/settingsstock/widget/ChartDataUsageView;Lcom/android/settingsstock/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #calls: Lcom/android/settingsstock/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$100(Lcom/android/settingsstock/widget/ChartDataUsageView;)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settingsstock/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$600(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settingsstock/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$700(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    const/4 v1, 0x0

    #calls: Lcom/android/settingsstock/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settingsstock/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$200(Lcom/android/settingsstock/widget/ChartDataUsageView;Lcom/android/settingsstock/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/settingsstock/widget/ChartSweepView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settingsstock/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$600(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settingsstock/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$700(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$3;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
