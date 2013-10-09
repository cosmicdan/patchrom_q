.class Lcom/android/settingsstock/DataUsageSummary$1;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


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
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$1;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "DataUsage"

    const-string v1, "Gprs connection SIM changed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$1;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    const/4 v1, 0x0

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabled:Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->access$002(Lcom/android/settingsstock/DataUsageSummary;Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$1;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$1;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->access$200(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->access$102(Lcom/android/settingsstock/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$1;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateGeminiSimStatus()V
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$300(Lcom/android/settingsstock/DataUsageSummary;)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$1;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$400(Lcom/android/settingsstock/DataUsageSummary;)V

    return-void
.end method
