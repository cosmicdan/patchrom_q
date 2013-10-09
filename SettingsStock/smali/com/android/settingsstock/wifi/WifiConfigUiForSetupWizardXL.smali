.class public Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;
.super Ljava/lang/Object;
.source "WifiConfigUiForSetupWizardXL.java"

# interfaces
.implements Lcom/android/settingsstock/wifi/WifiConfigUiBase;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupWizard"


# instance fields
.field private mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

.field private final mActivity:Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;

.field private mCancelButton:Landroid/widget/Button;

.field private mConnectButton:Landroid/widget/Button;

.field private mController:Lcom/android/settingsstock/wifi/WifiConfigController;

.field private mEdit:Z

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;Landroid/view/ViewGroup;Lcom/android/settingsstock/wifi/AccessPoint;Z)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;

    const v0, 0x7f08023c

    invoke-virtual {p1, v0}, Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const v0, 0x7f08023b

    invoke-virtual {p1, v0}, Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mCancelButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iput-boolean p4, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mEdit:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400ad

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/settingsstock/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-direct {v0, p0, v1, v2, p4}, Lcom/android/settingsstock/wifi/WifiConfigController;-><init>(Lcom/android/settingsstock/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingsstock/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mController:Lcom/android/settingsstock/wifi/WifiConfigController;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0801c2

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0801de

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;)Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;

    return-object v0
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingsstock/wifi/AccessPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    return-object v0
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;

    return-object v0
.end method

.method public getController()Lcom/android/settingsstock/wifi/WifiConfigController;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mController:Lcom/android/settingsstock/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mEdit:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;-><init>(Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public requestFocusAndShowKeyboard(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "SetupWizard"

    const-string v3, "password field to be focused not found."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, v1, Landroid/widget/EditText;

    if-nez v2, :cond_2

    const-string v2, "SetupWizard"

    const-string v3, "password field is not EditText"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "SetupWizard"

    const-string v3, "Already focused"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SetupWizard"

    const-string v3, "Failed to show SoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    const-string v3, "SetupWizard"

    const-string v4, "Focus request: %s"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    const-string v2, "successful"

    :goto_1
    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_4
    const-string v2, "failed"

    goto :goto_1
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    const-string v0, "SetupWizard"

    const-string v1, "Ignoring setTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "SetupWizard"

    const-string v1, "Ignoring setTitle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
