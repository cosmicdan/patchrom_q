.class Lcom/android/settingsstock/DataUsageSummary$15;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/settingsstock/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settingsstock/net/ChartData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settingsstock/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$3400(Lcom/android/settingsstock/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingsstock/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settingsstock/net/ChartData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settingsstock/net/ChartData;",
            ">;",
            "Lcom/android/settingsstock/net/ChartData;",
            ")V"
        }
    .end annotation

    const-string v0, "DataUsage"

    const-string v1, "ChartDataLoader finished "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/settingsstock/DataUsageSummary;->access$3502(Lcom/android/settingsstock/DataUsageSummary;Lcom/android/settingsstock/net/ChartData;)Lcom/android/settingsstock/net/ChartData;

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3200(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;
    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->access$3500(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingsstock/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3200(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;
    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->access$3500(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingsstock/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    const/4 v1, 0x1

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->access$800(Lcom/android/settingsstock/DataUsageSummary;Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3600(Lcom/android/settingsstock/DataUsageSummary;)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3500(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingsstock/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3700(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3700(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/settingsstock/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingsstock/DataUsageSummary$15;->onLoadFinished(Landroid/content/Loader;Lcom/android/settingsstock/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/settingsstock/net/ChartData;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->access$3502(Lcom/android/settingsstock/DataUsageSummary;Lcom/android/settingsstock/net/ChartData;)Lcom/android/settingsstock/net/ChartData;

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3200(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$15;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3200(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    return-void
.end method
