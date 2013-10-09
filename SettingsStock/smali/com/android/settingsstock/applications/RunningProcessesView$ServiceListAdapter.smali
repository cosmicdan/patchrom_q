.class Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mOrigItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/settingsstock/applications/RunningState;

.field final synthetic this$0:Lcom/android/settingsstock/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/applications/RunningProcessesView;Lcom/android/settingsstock/applications/RunningState;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settingsstock/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {p1}, Lcom/android/settingsstock/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-object v4, v3, Lcom/android/settingsstock/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-object v5, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settingsstock/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/settingsstock/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settingsstock/applications/RunningState;Lcom/android/settingsstock/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settingsstock/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settingsstock/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mIsProcess:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040085

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method refreshItems()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mOrigItems:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method setShowBackground(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settingsstock/applications/RunningState;->setWatchingBackgroundItems(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settingsstock/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settingsstock/applications/RunningProcessesView;->mColorBar:Lcom/android/settingsstock/applications/LinearColorBar;

    iget-boolean v1, p0, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/applications/LinearColorBar;->setShowingGreen(Z)V

    :cond_0
    return-void
.end method
