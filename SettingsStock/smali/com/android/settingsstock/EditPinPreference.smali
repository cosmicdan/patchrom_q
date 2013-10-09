.class Lcom/android/settingsstock/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# static fields
.field private static final MAXPINNUM:I = 0x8

.field private static final MINPINNUM:I = 0x4

.field private static final TAG:Ljava/lang/String; = "EditTextPreference"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mPinListener:Lcom/android/settingsstock/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/EditPinPreference;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const-string v1, "EditTextPreference"

    const-string v2, "add deal with orientation change"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settingsstock/EditPinPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/EditPinPreference$1;-><init>(Lcom/android/settingsstock/EditPinPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/EditPinPreference;->mPinListener:Lcom/android/settingsstock/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/EditPinPreference;->mPinListener:Lcom/android/settingsstock/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settingsstock/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settingsstock/EditPinPreference;Z)V

    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settingsstock/EditPinPreference$OnPinEnteredListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/EditPinPreference;->mPinListener:Lcom/android/settingsstock/EditPinPreference$OnPinEnteredListener;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x1

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "EditTextPreference"

    const-string v4, "showDialog"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settingsstock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/settingsstock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    const v4, 0x1020003

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "EditTextPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "editText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length of text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public showPinDialog()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
