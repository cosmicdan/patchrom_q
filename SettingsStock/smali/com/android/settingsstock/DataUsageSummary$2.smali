.class Lcom/android/settingsstock/DataUsageSummary$2;
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

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$2;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$2;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabledNoneGemini:Z
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$500(Lcom/android/settingsstock/DataUsageSummary;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DataUsage"

    const-string v1, "Data connection state changed(none gemini mode)"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$2;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$2;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->access$700(Lcom/android/settingsstock/DataUsageSummary;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->access$602(Lcom/android/settingsstock/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$2;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v2}, Lcom/android/settingsstock/DataUsageSummary;->access$800(Lcom/android/settingsstock/DataUsageSummary;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$2;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabledNoneGemini:Z
    invoke-static {v0, v2}, Lcom/android/settingsstock/DataUsageSummary;->access$502(Lcom/android/settingsstock/DataUsageSummary;Z)Z

    goto :goto_0
.end method
