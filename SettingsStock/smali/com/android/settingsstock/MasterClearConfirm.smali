.class public Lcom/android/settingsstock/MasterClearConfirm;
.super Landroid/app/Fragment;
.source "MasterClearConfirm.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/MasterClearConfirm$1;-><init>(Lcom/android/settingsstock/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settingsstock/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/MasterClearConfirm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/MasterClearConfirm;->mEraseSdCard:Z

    return v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingsstock/MasterClearConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingsstock/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingsstock/MasterClearConfirm;->mEraseSdCard:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/MasterClearConfirm;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settingsstock/MasterClearConfirm;->establishFinalConfirmationState()V

    iget-object v0, p0, Lcom/android/settingsstock/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
