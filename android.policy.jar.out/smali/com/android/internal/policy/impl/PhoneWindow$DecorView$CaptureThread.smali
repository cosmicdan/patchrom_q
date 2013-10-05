.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;
.super Ljava/lang/Thread;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureThread"
.end annotation


# instance fields
.field mCurrentTime:J

.field mIsRunnable:Z

.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;J)V
    .locals 1
    .parameter
    .parameter "currentTime"

    .prologue
    .line 2003
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->mIsRunnable:Z

    .line 2004
    iput-wide p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->mCurrentTime:J

    .line 2005
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2008
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->mIsRunnable:Z

    if-eqz v2, :cond_2

    .line 2009
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsMultipointPressed:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2010
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->mIsRunnable:Z

    .line 2020
    :cond_0
    :goto_1
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2021
    :catch_0
    move-exception v0

    .line 2022
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2011
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->mCurrentTime:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMultipointLongpressTimeout:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2013
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2014
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.cellon.action.ACTION_SCREEN_SHOT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2015
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2017
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$CaptureThread;->mIsRunnable:Z

    goto :goto_1

    .line 2025
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method
