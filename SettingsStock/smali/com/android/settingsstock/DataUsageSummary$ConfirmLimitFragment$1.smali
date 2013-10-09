.class Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v1}, Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/DataUsageSummary;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mIsLimitChangeToChecked:Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->access$4502(Lcom/android/settingsstock/DataUsageSummary;Z)Z

    iget-wide v1, p0, Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    #calls: Lcom/android/settingsstock/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settingsstock/DataUsageSummary;->access$2600(Lcom/android/settingsstock/DataUsageSummary;J)V

    :cond_0
    return-void
.end method
