.class Lcom/android/settingsstock/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settingsstock/wifi/WifiConfigUiBase;


# static fields
.field static final BUTTON_FORGET:I = -0x3

.field static final BUTTON_SUBMIT:I = -0x1

.field static final TAG:Ljava/lang/String; = "WifiDialog"


# instance fields
.field private final mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

.field private mController:Lcom/android/settingsstock/wifi/WifiConfigController;

.field private final mEdit:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settingsstock/wifi/AccessPoint;Z)V
    .locals 1

    const v0, 0x7f0f001e

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-boolean p4, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mEdit:Z

    iput-object p2, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    return-void
.end method

.method public static addQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settingsstock/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public closeSpinnerDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mController:Lcom/android/settingsstock/wifi/WifiConfigController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mController:Lcom/android/settingsstock/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiConfigController;->closeSpinnerDialog()V

    :cond_0
    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lcom/android/settingsstock/wifi/WifiConfigController;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mController:Lcom/android/settingsstock/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mEdit:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    new-instance v0, Lcom/android/settingsstock/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mEdit:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settingsstock/wifi/WifiConfigController;-><init>(Lcom/android/settingsstock/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingsstock/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mController:Lcom/android/settingsstock/wifi/WifiConfigController;

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mController:Lcom/android/settingsstock/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settingsstock/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settingsstock/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settingsstock/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
