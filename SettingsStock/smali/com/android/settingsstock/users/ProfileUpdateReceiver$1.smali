.class Lcom/android/settingsstock/users/ProfileUpdateReceiver$1;
.super Ljava/lang/Thread;
.source "ProfileUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/users/ProfileUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/users/ProfileUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/users/ProfileUpdateReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/users/ProfileUpdateReceiver$1;->this$0:Lcom/android/settingsstock/users/ProfileUpdateReceiver;

    iput-object p2, p0, Lcom/android/settingsstock/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingsstock/Utils;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    iget-object v0, p0, Lcom/android/settingsstock/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingsstock/users/ProfileUpdateReceiver;->copyProfileName(Landroid/content/Context;)V

    return-void
.end method
