.class Lcom/android/settingsstock/users/UserSettings$3;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/users/UserSettings;->loadProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/users/UserSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/users/UserSettings$3;->this$0:Lcom/android/settingsstock/users/UserSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/users/UserSettings$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/users/UserSettings$3;->this$0:Lcom/android/settingsstock/users/UserSettings;

    #getter for: Lcom/android/settingsstock/users/UserSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/settingsstock/users/UserSettings;->access$600(Lcom/android/settingsstock/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/users/UserSettings$3;->this$0:Lcom/android/settingsstock/users/UserSettings;

    #calls: Lcom/android/settingsstock/users/UserSettings;->assignProfilePhoto(Landroid/content/pm/UserInfo;)V
    invoke-static {v2, v1}, Lcom/android/settingsstock/users/UserSettings;->access$700(Lcom/android/settingsstock/users/UserSettings;Landroid/content/pm/UserInfo;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/users/UserSettings$3;->this$0:Lcom/android/settingsstock/users/UserSettings;

    #calls: Lcom/android/settingsstock/users/UserSettings;->getProfileName()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/users/UserSettings;->access$800(Lcom/android/settingsstock/users/UserSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/users/UserSettings$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/users/UserSettings$3;->this$0:Lcom/android/settingsstock/users/UserSettings;

    #calls: Lcom/android/settingsstock/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/settingsstock/users/UserSettings;->access$500(Lcom/android/settingsstock/users/UserSettings;Ljava/lang/String;)V

    return-void
.end method
