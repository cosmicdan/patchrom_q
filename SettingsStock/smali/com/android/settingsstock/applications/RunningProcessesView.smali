.class public Lcom/android/settingsstock/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/android/settingsstock/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settingsstock/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/settingsstock/applications/LinearColorBar;

.field mCurDialog:Landroid/app/Dialog;

.field mCurSelected:Lcom/android/settingsstock/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/settingsstock/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    iput v4, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    iput v4, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    iput v4, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    iput-wide v2, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    iput-wide v2, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iput-wide v2, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    iput-wide v2, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastAvailMemory:J

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mMyUserId:I

    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settingsstock/applications/RunningState$MergedItem;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mProcess:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    if-eqz v1, :cond_0

    const-string v1, "uid"

    iget-object v3, p1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mProcess:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    iget v3, v3, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "process"

    iget-object v3, p1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mProcess:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    iget-object v3, v3, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "user_id"

    iget v3, p1, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "background"

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mAdapter:Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settingsstock/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b06ad

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingsstock/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/applications/RunningState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f040086

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    new-instance v3, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-direct {v3, p0, v4}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settingsstock/applications/RunningProcessesView;Lcom/android/settingsstock/applications/RunningState;)V

    iput-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mAdapter:Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mAdapter:Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v3, 0x7f080166

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settingsstock/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mColorBar:Lcom/android/settingsstock/applications/LinearColorBar;

    const v3, 0x7f080168

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settingsstock/applications/RunningProcessesView$1;

    invoke-direct {v4, p0}, Lcom/android/settingsstock/applications/RunningProcessesView$1;-><init>(Lcom/android/settingsstock/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f080167

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settingsstock/applications/RunningProcessesView$2;

    invoke-direct {v4, p0}, Lcom/android/settingsstock/applications/RunningProcessesView$2;-><init>(Lcom/android/settingsstock/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    return-void
.end method

.method public doPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/RunningState;->pause()V

    iput-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settingsstock/applications/RunningState;->resume(Lcom/android/settingsstock/applications/RunningState$OnRefreshUiListener;)V

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/applications/RunningProcessesView;->refreshUi(Z)V

    :goto_0
    return v0

    :cond_0
    iput-object p2, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/applications/RunningState$MergedItem;

    iput-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mCurSelected:Lcom/android/settingsstock/applications/RunningState$BaseItem;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settingsstock/applications/RunningState$MergedItem;)V

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/applications/RunningProcessesView;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/applications/RunningProcessesView;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 14

    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

    move-object v0, v8

    check-cast v0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    :cond_1
    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    sub-long v1, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    const-wide/16 v1, 0x0

    :cond_2
    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-object v9, v8, Lcom/android/settingsstock/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    iget-object v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget v10, v10, Lcom/android/settingsstock/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v8, v10, :cond_3

    iget-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-wide v12, v8, Lcom/android/settingsstock/applications/RunningState;->mBackgroundProcessMemory:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_3

    iget-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastAvailMemory:J

    cmp-long v8, v10, v1

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget v8, v8, Lcom/android/settingsstock/applications/RunningState;->mNumBackgroundProcesses:I

    iput v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-wide v10, v8, Lcom/android/settingsstock/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    iput-wide v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastAvailMemory:J

    iget-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastAvailMemory:J

    iget-wide v12, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long v3, v10, v12

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b06a3

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-static {v8, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b06a4

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    iget-object v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget v10, v10, Lcom/android/settingsstock/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v8, v10, :cond_5

    iget-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-wide v12, v8, Lcom/android/settingsstock/applications/RunningState;->mForegroundProcessMemory:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    iget v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    iget-object v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget v10, v10, Lcom/android/settingsstock/applications/RunningState;->mNumServiceProcesses:I

    if-ne v8, v10, :cond_5

    iget-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-wide v12, v8, Lcom/android/settingsstock/applications/RunningState;->mServiceProcessMemory:J

    cmp-long v8, v10, v12

    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget v8, v8, Lcom/android/settingsstock/applications/RunningState;->mNumForegroundProcesses:I

    iput v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-wide v10, v8, Lcom/android/settingsstock/applications/RunningState;->mForegroundProcessMemory:J

    iput-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget v8, v8, Lcom/android/settingsstock/applications/RunningState;->mNumServiceProcesses:I

    iput v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-wide v10, v8, Lcom/android/settingsstock/applications/RunningState;->mServiceProcessMemory:J

    iput-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    :cond_6
    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    long-to-float v6, v10

    iget-wide v10, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long/2addr v10, v1

    iget-wide v12, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    add-long/2addr v10, v12

    long-to-float v7, v10

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mColorBar:Lcom/android/settingsstock/applications/LinearColorBar;

    sub-float v10, v6, v7

    div-float/2addr v10, v6

    iget-wide v11, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    long-to-float v11, v11

    div-float/2addr v11, v6

    iget-wide v12, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    long-to-float v12, v12

    div-float/2addr v12, v6

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/settingsstock/applications/LinearColorBar;->setRatios(FFF)V

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method updateTimes()V
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    return-void
.end method
