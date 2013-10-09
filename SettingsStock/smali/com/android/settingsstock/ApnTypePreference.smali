.class public Lcom/android/settingsstock/ApnTypePreference;
.super Landroid/preference/DialogPreference;
.source "ApnTypePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ApnTypePreference"


# instance fields
.field private mApnTypeArray:[Ljava/lang/String;

.field private mApnTypeNum:I

.field private mCheckState:[Z

.field mExt:Lcom/android/settingsstock/ext/IApnEditorExt;

.field private mListView:Landroid/widget/ListView;

.field private mTypeString:Ljava/lang/String;

.field private mUiCheckState:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingsstock/ApnTypePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/settingsstock/Utils;->getApnEditorPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IApnEditorExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mExt:Lcom/android/settingsstock/ext/IApnEditorExt;

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mExt:Lcom/android/settingsstock/ext/IApnEditorExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnTypePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07006e

    const v3, 0x7f07006d

    const v4, 0x7f07006c

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settingsstock/ext/IApnEditorExt;->getApnTypeArray(Landroid/content/Context;III)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeNum:I

    :cond_0
    iget v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeNum:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mCheckState:[Z

    return-void
.end method

.method private updateRecord()V
    .locals 6

    iget-object v3, p0, Lcom/android/settingsstock/ApnTypePreference;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/ApnTypePreference;->mCheckState:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/ApnTypePreference;->mTypeString:Ljava/lang/String;

    :goto_1
    const-string v3, "ApnTypePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTypeString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settingsstock/ApnTypePreference;->mTypeString:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateUiCheckBoxStatus()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mCheckState:[Z

    iget-object v2, p0, Lcom/android/settingsstock/ApnTypePreference;->mUiCheckState:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUiCheckBoxStatus mCheckState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/ApnTypePreference;->mCheckState:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getTypeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public intCheckState(Ljava/lang/String;)V
    .locals 4

    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init CheckState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/settingsstock/ApnTypePreference;->mTypeString:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mCheckState:[Z

    iget-object v2, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mCheckState:[Z

    aput-boolean p3, v0, p2

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mUiCheckState:[Z

    aput-boolean p3, v0, p2

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnTypePreference;->updateUiCheckBoxStatus()V

    invoke-direct {p0}, Lcom/android/settingsstock/ApnTypePreference;->updateRecord()V

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnTypePreference;->callChangeListener(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mTypeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    iget-object v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingsstock/ApnTypePreference;->mCheckState:[Z

    invoke-virtual {p1, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeNum:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mUiCheckState:[Z

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeNum:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/ApnTypePreference;->mUiCheckState:[Z

    iget-object v2, p0, Lcom/android/settingsstock/ApnTypePreference;->mCheckState:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    const-string v1, "ApnTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder mUiCheckState["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/ApnTypePreference;->mUiCheckState:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "apn_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "tethering"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mExt:Lcom/android/settingsstock/ext/IApnEditorExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnTypePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f070081

    const v5, 0x7f07006d

    const v6, 0x7f07006c

    iget-object v7, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/android/settingsstock/ext/IApnEditorExt;->getApnTypeArrayByCard(Landroid/content/Context;Ljava/lang/String;ZIII[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeNum:I

    :cond_0
    iget v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mApnTypeNum:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settingsstock/ApnTypePreference;->mCheckState:[Z

    return-void
.end method
