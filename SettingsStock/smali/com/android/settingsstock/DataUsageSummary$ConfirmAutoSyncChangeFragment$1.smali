.class Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    #getter for: Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;->access$5000(Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    return-void
.end method
