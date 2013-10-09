.class Lcom/android/settingsstock/DataUsageSummary$10;
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

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$10;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$10;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->access$2500(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$10;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment;->show(Lcom/android/settingsstock/DataUsageSummary;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$10;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    const-wide/16 v2, -0x1

    #calls: Lcom/android/settingsstock/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v1, v2, v3}, Lcom/android/settingsstock/DataUsageSummary;->access$2600(Lcom/android/settingsstock/DataUsageSummary;J)V

    goto :goto_1
.end method
