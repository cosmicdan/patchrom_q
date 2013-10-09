.class public Lcom/android/settingsstock/CryptKeeperConfirm$Blank;
.super Landroid/app/Activity;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Blank"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04001e

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/CryptKeeperConfirm$Blank;->setContentView(I)V

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Blank"

    const-string v2, "MonkeyRunning"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/CryptKeeperConfirm$Blank;->finish()V

    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/CryptKeeperConfirm$Blank;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/high16 v1, 0x177

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v1, p0, Lcom/android/settingsstock/CryptKeeperConfirm$Blank;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settingsstock/CryptKeeperConfirm$Blank$1;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/CryptKeeperConfirm$Blank$1;-><init>(Lcom/android/settingsstock/CryptKeeperConfirm$Blank;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
