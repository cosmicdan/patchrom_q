.class Lcom/android/settingsstock/widget/ChartDataUsageView$1;
.super Landroid/os/Handler;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    iput-object p1, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$1;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingsstock/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$1;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #calls: Lcom/android/settingsstock/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settingsstock/widget/ChartSweepView;)V
    invoke-static {v1, v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$000(Lcom/android/settingsstock/widget/ChartDataUsageView;Lcom/android/settingsstock/widget/ChartSweepView;)V

    iget-object v1, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$1;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    #calls: Lcom/android/settingsstock/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v1}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$100(Lcom/android/settingsstock/widget/ChartDataUsageView;)V

    iget-object v1, p0, Lcom/android/settingsstock/widget/ChartDataUsageView$1;->this$0:Lcom/android/settingsstock/widget/ChartDataUsageView;

    const/4 v2, 0x1

    #calls: Lcom/android/settingsstock/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settingsstock/widget/ChartSweepView;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/settingsstock/widget/ChartDataUsageView;->access$200(Lcom/android/settingsstock/widget/ChartDataUsageView;Lcom/android/settingsstock/widget/ChartSweepView;Z)V

    return-void
.end method
