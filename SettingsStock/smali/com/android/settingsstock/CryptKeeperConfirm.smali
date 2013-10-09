.class public Lcom/android/settingsstock/CryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/CryptKeeperConfirm$Blank;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CryptKeeperConfirm"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/CryptKeeperConfirm$1;-><init>(Lcom/android/settingsstock/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settingsstock/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/CryptKeeperConfirm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeperConfirm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingsstock/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/CryptKeeperConfirm;->mContext:Landroid/content/Context;

    const v0, 0x7f04001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settingsstock/CryptKeeperConfirm;->establishFinalConfirmationState()V

    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
