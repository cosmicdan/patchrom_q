.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;
.super Ljava/lang/Object;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/MultiGlowView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "handle"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mIsBouncing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->doTransition(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 10
    .parameter "v"
    .parameter "target"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getMultiGlowPadView()Lcom/android/internal/widget/multiwaveview/MultiGlowView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/multiwaveview/MultiGlowView;->getResourceIdForTarget(I)I

    move-result v9

    .local v9, resId:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getActivityLauncher()Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    move-result-object v0

    .local v0, activityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v8

    .local v8, callback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x0

    invoke-interface {v8, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v3, it:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.mms"

    const-string v4, "com.android.mms.ui.BootActivity"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x0

    invoke-interface {v8, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .end local v3           #it:Landroid/content/Intent;
    :pswitch_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x0

    invoke-interface {v8, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    :pswitch_3
    const-wide/16 v4, 0x0

    invoke-interface {v8, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :pswitch_4
    const-wide/16 v4, 0x0

    invoke-interface {v8, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
