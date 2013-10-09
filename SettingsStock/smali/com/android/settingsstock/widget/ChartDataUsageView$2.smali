.class Lcom/android/settingsstock/widget/ChartDataUsageView$2;
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

    iput-object p1, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$2;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settingsstock/widget/ChartSweepView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$2;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #calls: Lcom/android/settingsstock/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$300(Lcom/android/settingsstock/widget/ChartDataUsageView;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$2;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$2;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #getter for: Lcom/android/settingsstock/widget/ChartDataUsageView;->mListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$400(Lcom/android/settingsstock/widget/ChartDataUsageView;)Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/android/settingsstock/widget/ChartSweepView;)V
    .locals 0

    return-void
.end method
