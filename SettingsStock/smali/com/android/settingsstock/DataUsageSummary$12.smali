.class Lcom/android/settingsstock/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$12;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$12;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settingsstock/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$12;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$12;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->access$2900(Lcom/android/settingsstock/DataUsageSummary;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
