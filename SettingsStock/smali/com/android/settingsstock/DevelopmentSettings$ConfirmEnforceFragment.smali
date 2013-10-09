.class public Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;
.super Landroid/app/DialogFragment;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmEnforceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settingsstock/DevelopmentSettings;)V
    .locals 3

    new-instance v0, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-direct {v0}, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm_enforce"

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b071f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b0720

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment$1;-><init>(Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment$2;-><init>(Lcom/android/settingsstock/DevelopmentSettings$ConfirmEnforceFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
