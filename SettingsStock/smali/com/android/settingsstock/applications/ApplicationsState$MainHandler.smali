.class Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_ALL_SIZES_COMPUTED:I = 0x5

.field static final MSG_PACKAGE_ICON_CHANGED:I = 0x3

.field static final MSG_PACKAGE_LIST_CHANGED:I = 0x2

.field static final MSG_PACKAGE_SIZE_CHANGED:I = 0x4

.field static final MSG_REBUILD_COMPLETE:I = 0x1

.field static final MSG_RUNNING_STATE_CHANGED:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/applications/ApplicationsState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settingsstock/applications/ApplicationsState;->rebuildActiveSessions()V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settingsstock/applications/ApplicationsState$Session;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;

    iget-object v3, v1, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;

    iget-object v3, v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_4
    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;

    invoke-interface {v2}, Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_5
    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;

    iget-object v3, v2, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_6
    invoke-interface {v3, v2}, Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    const/4 v2, 0x0

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
