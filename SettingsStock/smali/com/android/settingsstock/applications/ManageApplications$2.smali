.class Lcom/android/settingsstock/applications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/applications/ManageApplications;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/applications/ManageApplications$2;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$2;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    #setter for: Lcom/android/settingsstock/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1, v2}, Lcom/android/settingsstock/applications/ManageApplications;->access$1402(Lcom/android/settingsstock/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$2;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settingsstock/applications/ManageApplications;->access$100(Lcom/android/settingsstock/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$2;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settingsstock/applications/ManageApplications;->access$100(Lcom/android/settingsstock/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$2;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/settingsstock/applications/ManageApplications;->access$1400(Lcom/android/settingsstock/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->setContainerService(Lcom/android/internal/app/IMediaContainerService;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$2;->this$0:Lcom/android/settingsstock/applications/ManageApplications;

    const/4 v1, 0x0

    #setter for: Lcom/android/settingsstock/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/settingsstock/applications/ManageApplications;->access$1402(Lcom/android/settingsstock/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    return-void
.end method
