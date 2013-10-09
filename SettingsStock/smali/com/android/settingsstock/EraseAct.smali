.class public Lcom/android/settingsstock/EraseAct;
.super Landroid/app/Activity;
.source "EraseAct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/EraseAct$ButtonClick;
    }
.end annotation


# instance fields
.field private mEraseSdCard:Z

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/EraseAct;->mEraseSdCard:Z

    new-instance v0, Lcom/android/settingsstock/EraseAct$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/EraseAct$1;-><init>(Lcom/android/settingsstock/EraseAct;)V

    iput-object v0, p0, Lcom/android/settingsstock/EraseAct;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/EraseAct;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/EraseAct;->mEraseSdCard:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/EraseAct;->setContentView(I)V

    const v0, 0x7f0800d7

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/EraseAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/EraseAct;->mFinalButton:Landroid/widget/Button;

    sget-boolean v0, Lcom/android/settingsstock/FactoryResetActivity;->erase_sd:Z

    iput-boolean v0, p0, Lcom/android/settingsstock/EraseAct;->mEraseSdCard:Z

    const-string v0, "tianming test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEraseSdCard>>>>>>>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/EraseAct;->mEraseSdCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/EraseAct;->mFinalButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settingsstock/EraseAct$ButtonClick;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/EraseAct$ButtonClick;-><init>(Lcom/android/settingsstock/EraseAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
