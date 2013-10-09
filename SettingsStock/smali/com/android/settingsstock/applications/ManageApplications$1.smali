.class Lcom/android/settingsstock/applications/ManageApplications$1;
.super Landroid/os/AsyncTask;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/applications/ManageApplications;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/applications/ManageApplications;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$nm:Landroid/app/INotificationManager;

.field final synthetic val$npm:Landroid/net/NetworkPolicyManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$nm:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$npm:Landroid/net/NetworkPolicyManager;

    iput-object p5, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/applications/ManageApplications$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15

    iget-object v11, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v12, 0x200

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    :try_start_0
    iget-object v11, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$nm:Landroid/app/INotificationManager;

    iget-object v12, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v11, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v12, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    iget-boolean v11, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v12, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v12, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v4, v8, v12}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    iget-object v12, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v11, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v9

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    move-object v2, v9

    array-length v7, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_4

    aget v10, v2, v6

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v11, v3, :cond_3

    iget-object v11, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v11, p0, Lcom/android/settingsstock/applications/ManageApplications$1;->val$handler:Landroid/os/Handler;

    new-instance v12, Lcom/android/settingsstock/applications/ManageApplications$1$1;

    invoke-direct {v12, p0}, Lcom/android/settingsstock/applications/ManageApplications$1$1;-><init>(Lcom/android/settingsstock/applications/ManageApplications$1;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v11, 0x0

    return-object v11

    :catch_0
    move-exception v11

    goto :goto_1
.end method
