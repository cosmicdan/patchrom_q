.class Lcom/android/settingsstock/applications/RunningState$ProcessItem;
.super Lcom/android/settingsstock/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mClient:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

.field final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settingsstock/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mInteresting:Z

.field mIsStarted:Z

.field mIsSystem:Z

.field mLastNumDependentProcesses:I

.field mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field mRunningSeq:I

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settingsstock/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/settingsstock/applications/RunningState$BaseItem;-><init>(ZI)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b06a6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    iput p2, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mUid:I

    iput-object p3, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/RunningState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/RunningState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    invoke-virtual {v2, p1, p2}, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6

    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    iget-object v4, v3, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mClient:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    if-eq v4, p0, :cond_0

    const/4 v1, 0x1

    iput-object p0, v3, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mClient:Lcom/android/settingsstock/applications/RunningState$ProcessItem;

    :cond_0
    iput p3, v3, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mCurSeq:I

    invoke-virtual {v3, p2}, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v5, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    :cond_2
    return v1
.end method

.method ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 10

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const/16 v9, 0x2000

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mUid:I

    if-ne v8, v9, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    :cond_1
    iget v8, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    const/16 v9, 0x2000

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    :cond_2
    move-object v1, v7

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_3

    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-object v5, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v8

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    iget-object v8, v8, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const/4 v8, 0x0

    :try_start_3
    aget-object v8, v7, v8

    const/16 v9, 0x2000

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    if-nez v7, :cond_0

    const/4 v2, 0x1

    new-instance v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    iget v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v7, v8}, Lcom/android/settingsstock/applications/RunningState$ServiceItem;-><init>(I)V

    iput-object p2, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/16 v10, 0x2000

    iget v11, p2, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v8, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v6, v8, v9}, Lcom/android/settingsstock/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iput-object v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iget-object v8, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, v7, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v8, p0, Lcom/android/settingsstock/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v8, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mCurSeq:I

    iput v8, v7, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mCurSeq:I

    iput-object p2, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-wide v0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    :goto_2
    iget-wide v8, v7, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v8, v8, v0

    if-eqz v8, :cond_1

    iput-wide v0, v7, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mActiveSince:J

    const/4 v2, 0x1

    :cond_1
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_5

    iget-boolean v8, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    const/4 v2, 0x1

    :cond_2
    :try_start_1
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b06a2

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    return v2

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    :catch_0
    move-exception v4

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-boolean v8, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-nez v8, :cond_6

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    const/4 v2, 0x1

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b06a1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    goto :goto_3

    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method updateSize(Landroid/content/Context;JI)Z
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v1, 0x400

    mul-long/2addr v1, p2

    iput-wide v1, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mSize:J

    iget v1, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mCurSeq:I

    if-ne v1, p4, :cond_0

    iget-wide v1, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    :cond_0
    return v3
.end method
