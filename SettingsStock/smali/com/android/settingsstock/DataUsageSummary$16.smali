.class Lcom/android/settingsstock/DataUsageSummary$16;
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
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$16;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateEmptyVisible()V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$16;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mAdapter:Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$3900(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$16;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$4000(Lcom/android/settingsstock/DataUsageSummary;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$16;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mEmpty:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$4100(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
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
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settingsstock/net/SummaryForAllUidLoader;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$16;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$16;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->access$3400(Lcom/android/settingsstock/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settingsstock/net/SummaryForAllUidLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;",
            "Landroid/net/NetworkStats;",
            ")V"
        }
    .end annotation

    const-string v1, "DataUsage"

    const-string v2, "SummaryForAllUidLoader finished"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$16;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->access$3800(Lcom/android/settingsstock/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$16;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mAdapter:Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;
    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->access$3900(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary$16;->updateEmptyVisible()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/net/NetworkStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingsstock/DataUsageSummary$16;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/net/NetworkStats;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$16;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mAdapter:Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$3900(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;->bindStats(Landroid/net/NetworkStats;[I)V

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary$16;->updateEmptyVisible()V

    return-void
.end method
