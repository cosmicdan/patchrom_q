.class public Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {v0}, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settingsstock/DataUsageSummary;->access$4900()Lcom/android/settingsstock/ext/ISettingsMiscExt;

    move-result-object v4

    const v5, 0x7f0b08c9

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bgDataDialogTitle"

    invoke-interface {v4, v5, v6}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/settingsstock/DataUsageSummary;->access$4900()Lcom/android/settingsstock/ext/ISettingsMiscExt;

    move-result-object v4

    const v5, 0x7f0b08ca

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bgDataMenuDialogMessage"

    invoke-interface {v4, v5, v6}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/settingsstock/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0b08cb

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v4, 0x104000a

    new-instance v5, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment$1;-><init>(Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
