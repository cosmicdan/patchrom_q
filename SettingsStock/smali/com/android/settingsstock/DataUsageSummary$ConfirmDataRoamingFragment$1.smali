.class Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment$1;->this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment$1;->this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-virtual {v2}, Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/DataUsageSummary;

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment$1;->this$0:Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-virtual {v2}, Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;->getTargetRequestCode()I

    move-result v0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    #calls: Lcom/android/settingsstock/DataUsageSummary;->setDataRoaming(IZ)V
    invoke-static {v1, v0, v3}, Lcom/android/settingsstock/DataUsageSummary;->access$4700(Lcom/android/settingsstock/DataUsageSummary;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    #calls: Lcom/android/settingsstock/DataUsageSummary;->setDataRoaming(Z)V
    invoke-static {v1, v3}, Lcom/android/settingsstock/DataUsageSummary;->access$4800(Lcom/android/settingsstock/DataUsageSummary;Z)V

    goto :goto_0
.end method
