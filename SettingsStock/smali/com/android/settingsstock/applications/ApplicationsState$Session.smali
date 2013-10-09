.class public Lcom/android/settingsstock/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settingsstock/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settingsstock/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/applications/ApplicationsState;Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;

    return-void
.end method


# virtual methods
.method handleRebuildList()V
    .locals 11

    iget-object v9, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-boolean v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v8, :cond_0

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingsstock/applications/ApplicationsState$AppFilter;

    iget-object v1, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingsstock/applications/ApplicationsState$AppFilter;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, -0x2

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/settingsstock/applications/ApplicationsState$AppFilter;->init()V

    :cond_1
    iget-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v9, v8, Lcom/android/settingsstock/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingsstock/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    invoke-interface {v3, v6}, Lcom/android/settingsstock/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v9, v8, Lcom/android/settingsstock/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_2
    iget-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v8, v6}, Lcom/android/settingsstock/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingsstock/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    :cond_4
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v9, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    :try_start_6
    iget-boolean v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v8, :cond_5

    iput-object v4, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v8, :cond_6

    iput-object v4, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    :cond_5
    :goto_2
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :cond_6
    :try_start_7
    iget-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingsstock/applications/ApplicationsState;->mMainHandler:Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, p0}, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingsstock/applications/ApplicationsState;->mMainHandler:Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, p0}, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingsstock/applications/ApplicationsState;->mMainHandler:Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v7}, Lcom/android/settingsstock/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settingsstock/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mResumed:Z

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settingsstock/applications/ApplicationsState;->mSessionsChanged:Z

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingsstock/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settingsstock/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/ApplicationsState;->doPauseIfNeededLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebuild(Lcom/android/settingsstock/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingsstock/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v7, v5, Lcom/android/settingsstock/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingsstock/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildAsync:Z

    iput-object p1, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingsstock/applications/ApplicationsState$AppFilter;

    iput-object p2, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingsstock/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingsstock/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/settingsstock/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingsstock/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingsstock/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/settingsstock/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingsstock/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingsstock/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v5, v0}, Lcom/android/settingsstock/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0xfa

    add-long v3, v7, v9

    :goto_0
    iget-object v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildAsync:Z

    iget-object v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v5

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    :cond_2
    :try_start_5
    iget-object v5, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    sub-long v7, v3, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ApplicationsState$Session;->pause()V

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settingsstock/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settingsstock/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->mResumed:Z

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settingsstock/applications/ApplicationsState;->mSessionsChanged:Z

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$Session;->this$0:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/ApplicationsState;->doResumeIfNeededLocked()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
