.class public Lcom/android/settingsstock/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settingsstock/applications/AppClickListener;

.field private mColorBar:Lcom/android/settingsstock/applications/LinearColorBar;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field public final mFilter:I

.field private mFreeStorage:J

.field private mFreeStorageText:Landroid/widget/TextView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mLastAppStorage:J

.field private mLastFreeStorage:J

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settingsstock/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mStorageChartLabel:Landroid/widget/TextView;

.field private mTotalStorage:J

.field private mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settingsstock/applications/ManageApplications;Lcom/android/settingsstock/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settingsstock/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    new-instance v0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    iput-object p3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListType:I

    packed-switch p4, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFilter:I

    :goto_0
    iput-object p5, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settingsstock/applications/AppClickListener;

    invoke-virtual {p1}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0682

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0681

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    return-void

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$1100(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)Lcom/android/settingsstock/applications/RunningProcessesView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method applyCurrentStorage()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settingsstock/applications/LinearColorBar;

    iget-wide v4, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-wide v5, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    iget-wide v5, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    long-to-float v5, v5

    iget-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settingsstock/applications/LinearColorBar;->setRatios(FFF)V

    iget-wide v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget-wide v5, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    sub-long v1, v3, v5

    iget-wide v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    iput-wide v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06a4

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-wide v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    iget-wide v5, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06a3

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settingsstock/applications/LinearColorBar;

    invoke-virtual {v3, v9, v9, v9}, Lcom/android/settingsstock/applications/LinearColorBar;->setRatios(FFF)V

    iget-wide v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_4

    iput-wide v7, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLastUsedStorage:J

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-wide v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    iput-wide v7, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLastFreeStorage:J

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    :goto_0
    return-object v2

    :cond_0
    iput-object p1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, v4, :cond_4

    const v2, 0x7f04004a

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0800c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0800c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iput-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settingsstock/applications/ApplicationsState;Lcom/android/settingsstock/applications/ManageApplications$TabInfo;I)V

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0800c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/LinearColorBar;

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mColorBar:Lcom/android/settingsstock/applications/LinearColorBar;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0800c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0800c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mUsedStorageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v3, 0x7f0800c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorageText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-static {p2, p3, v2, v5}, Lcom/android/settingsstock/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    iget v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settingsstock/applications/ManageApplications;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    :cond_2
    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v3, 0x7f0800cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/RunningProcessesView;

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f040047

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mStorageChartLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v3}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b066b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public detachView()V
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/applications/RunningProcessesView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mClickListener:Lcom/android/settingsstock/applications/AppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/settingsstock/applications/AppClickListener;->onItemClick(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/RunningProcessesView;->doPause()V

    :cond_1
    return-void
.end method

.method public resume(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingsstock/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;

    invoke-virtual {v1, v4}, Lcom/android/settingsstock/applications/RunningProcessesView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    return-void
.end method

.method updateStorageUsage()V
    .locals 12

    const-wide/16 v7, 0x0

    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mOwner:Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v6}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_0

    iput-wide v7, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v7, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v7, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    iget v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFilter:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_2

    :try_start_0
    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_7

    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v6, :cond_4

    :try_start_1
    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mTotalStorage:J

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    iput-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_6

    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v10, v1, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->dataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    if-eqz v3, :cond_5

    iget-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    iget-wide v8, v1, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iget-wide v10, v1, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mAppStorage:J

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_1
    move-exception v2

    const-string v6, "ManageApplications"

    const-string v7, "Problem in container service"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_6
    iget-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v8}, Lcom/android/settingsstock/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mFreeStorage:J

    :cond_7
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    goto/16 :goto_0
.end method
