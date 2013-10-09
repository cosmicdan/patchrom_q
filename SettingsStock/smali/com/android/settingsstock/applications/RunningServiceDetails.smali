.class public Lcom/android/settingsstock/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settingsstock/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# static fields
.field static final DIALOG_CONFIRM_STOP:I = 0x1

.field static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field static final KEY_PROCESS:Ljava/lang/String; = "process"

.field static final KEY_UID:Ljava/lang/String; = "uid"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field static final TAG:Ljava/lang/String; = "RunningServicesDetails"


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/settingsstock/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/applications/RunningServiceDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settingsstock/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/applications/RunningServiceDetails$1;-><init>(Lcom/android/settingsstock/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/settingsstock/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settingsstock/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    :cond_2
    iput v5, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mNumProcesses:I

    iput v5, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mNumServices:I

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mUser:Lcom/android/settingsstock/applications/RunningState$UserState;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v2, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settingsstock/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settingsstock/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addDetailsViews(Lcom/android/settingsstock/applications/RunningState$MergedItem;ZZ)V

    :cond_6
    return-void
.end method

.method addDetailsViews(Lcom/android/settingsstock/applications/RunningState$MergedItem;ZZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settingsstock/applications/RunningState$ServiceItem;Lcom/android/settingsstock/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object v2, p1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v5, 0x0

    iget v2, p1, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v2, v6, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p0, v5, p1, v4, v2}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settingsstock/applications/RunningState$ServiceItem;Lcom/android/settingsstock/applications/RunningState$MergedItem;ZZ)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_2
    iget-object v2, p1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    if-gez v0, :cond_4

    iget-object v1, p1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mProcess:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    :goto_3
    if-eqz v1, :cond_5

    iget v2, v1, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_5

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    :cond_5
    if-gez v0, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/settingsstock/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5
.end method

.method addProcessDetailsView(Lcom/android/settingsstock/applications/RunningState$ProcessItem;Z)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addProcessesHeader()V

    new-instance v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settingsstock/applications/RunningServiceDetails;)V

    iget-object v9, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040088

    iget-object v11, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iget-object v9, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v5, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    new-instance v9, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-object v11, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settingsstock/applications/RunningState;Lcom/android/settingsstock/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    const v9, 0x7f0800a8

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    const v9, 0x7f0800a6

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mCategory:Landroid/view/View;

    const v9, 0x7f0800a7

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mLaunch:Landroid/view/View;

    iget-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mCategory:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mLaunch:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-object v10, v10, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settingsstock/applications/RunningState$BaseItem;

    iget-object v10, v10, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    iget-object v9, v2, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/widget/Button;->setEnabled(Z)V

    const v9, 0x7f08016b

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v9, p1, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eq v9, v10, :cond_2

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const v9, 0x7f0b06b7

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v6, p1, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    :cond_4
    :goto_2
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_0
    const v8, 0x7f0b06b9

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/settingsstock/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_2

    :pswitch_1
    const v8, 0x7f0b06b8

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_4

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/settingsstock/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2

    :catch_0
    move-exception v9

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addProcessesHeader()V
    .locals 4

    iget v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008a

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v1, 0x7f0b06b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mNumProcesses:I

    return-void
.end method

.method addServiceDetailsView(Lcom/android/settingsstock/applications/RunningState$ServiceItem;Lcom/android/settingsstock/applications/RunningState$MergedItem;ZZ)V
    .locals 11

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addServicesHeader()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    :goto_1
    new-instance v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settingsstock/applications/RunningServiceDetails;)V

    iget-object v7, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040089

    iget-object v9, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v6, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    iput-object p1, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    new-instance v7, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v7, v6}, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-object v9, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settingsstock/applications/RunningState;Lcom/android/settingsstock/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    if-nez p4, :cond_1

    const v7, 0x7f08016a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v8, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    :cond_2
    const v7, 0x7f08016b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    iget-object v7, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v9, v9, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v10, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v7, 0x7f08019f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_9

    const v7, 0x7f0b06b2

    :goto_3
    invoke-virtual {v9, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0801a0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    if-eqz p3, :cond_a

    iget v7, p2, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_a

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v7, 0x7f08008d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v7, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget v7, p2, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addProcessesHeader()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    goto/16 :goto_1

    :cond_5
    iget-boolean v7, p2, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v7, :cond_6

    const v7, 0x7f0b06b5

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v7, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b06b6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v7

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz p1, :cond_8

    const v7, 0x7f0b06b3

    :goto_5
    invoke-virtual {v8, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f0b06b4

    goto :goto_5

    :cond_9
    const v7, 0x7f0b06b1

    goto/16 :goto_3

    :cond_a
    if-eqz p1, :cond_b

    iget-object v7, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v9, v9, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v10, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_f

    const v7, 0x7f0b06b2

    :goto_7
    invoke-virtual {v9, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v8, 0x10403e0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "send_action_app_error"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v7, v8, v9}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    iget-object v8, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_b
    iget-boolean v7, p2, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v7, :cond_c

    const v7, 0x7f0b06b5

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_c
    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_d

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v7, p1, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b06b6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v7

    goto/16 :goto_6

    :cond_d
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz p1, :cond_e

    const v7, 0x7f0b06b3

    :goto_9
    invoke-virtual {v8, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_e
    const v7, 0x7f0b06b4

    goto :goto_9

    :cond_f
    const v7, 0x7f0b06b1

    goto/16 :goto_7

    :cond_10
    const/4 v7, 0x0

    goto :goto_8

    :cond_11
    iget-object v7, v3, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method addServicesHeader()V
    .locals 4

    iget v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008a

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v1, 0x7f0b06af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mNumServices:I

    return-void
.end method

.method ensureData()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mHaveData:Z

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/applications/RunningState;->resume(Lcom/android/settingsstock/applications/RunningState$OnRefreshUiListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/RunningState;->waitForData()V

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/applications/RunningServiceDetails;->refreshUi(Z)V

    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settingsstock/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;

    iget v4, v2, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mUserId:I

    iget v5, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settingsstock/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_3

    iget-object v4, v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mProcess:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mProcess:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mProcess:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mProcess:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    move-object v1, v2

    :cond_5
    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_6

    iput-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mUid:I

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mShowBackground:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const v1, 0x7f040087

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f08008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    new-instance v1, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->ensureData()V

    return-object v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mHaveData:Z

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/RunningState;->pause()V

    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->refreshUi(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->ensureData()V

    return-void
.end method

.method refreshUi(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    iget-object v2, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settingsstock/applications/RunningState;Lcom/android/settingsstock/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->addDetailViews()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0b06ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
