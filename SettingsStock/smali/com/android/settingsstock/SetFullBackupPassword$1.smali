.class Lcom/android/settingsstock/SetFullBackupPassword$1;
.super Ljava/lang/Object;
.source "SetFullBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/SetFullBackupPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/SetFullBackupPassword;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/SetFullBackupPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settingsstock/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settingsstock/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settingsstock/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settingsstock/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SetFullBackupPassword"

    const-string v4, "password mismatch"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    const v4, 0x7f0b07ff

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    #calls: Lcom/android/settingsstock/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v1, v2}, Lcom/android/settingsstock/SetFullBackupPassword;->access$000(Lcom/android/settingsstock/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SetFullBackupPassword"

    const-string v4, "password set successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    const v4, 0x7f0b07fe

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    invoke-virtual {v3}, Lcom/android/settingsstock/SetFullBackupPassword;->finish()V

    goto :goto_0

    :cond_1
    const-string v3, "SetFullBackupPassword"

    const-string v4, "failure; password mismatch?"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    const v4, 0x7f0b0800

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/settingsstock/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/SetFullBackupPassword$1;->this$0:Lcom/android/settingsstock/SetFullBackupPassword;

    invoke-virtual {v3}, Lcom/android/settingsstock/SetFullBackupPassword;->finish()V

    goto :goto_0

    :cond_3
    const-string v3, "SetFullBackupPassword"

    const-string v4, "Click on unknown view"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
