.class public Lcom/android/settingsstock/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settingsstock/applications/AppClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settingsstock/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/settingsstock/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final DEBUG:Z = false

.field private static final EXTRA_DEFAULT_LIST_TYPE:Ljava/lang/String; = "defaultListType"

.field private static final EXTRA_RESET_DIALOG:Ljava/lang/String; = "resetDialog"

.field private static final EXTRA_SHOW_BACKGROUND:Ljava/lang/String; = "showBackground"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final FILTER_APPS_ALL:I = 0x0

.field public static final FILTER_APPS_SDCARD:I = 0x2

.field public static final FILTER_APPS_THIRD_PARTY:I = 0x1

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field static final LIST_TYPE_ALL:I = 0x3

.field static final LIST_TYPE_DOWNLOADED:I = 0x0

.field static final LIST_TYPE_RUNNING:I = 0x1

.field static final LIST_TYPE_SDCARD:I = 0x2

.field private static final MENU_OPTIONS_BASE:I = 0x0

.field public static final RESET_APP_PREFERENCES:I = 0x8

.field public static final SHOW_BACKGROUND_PROCESSES:I = 0x7

.field public static final SHOW_RUNNING_SERVICES:I = 0x6

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final SORT_ORDER_ALPHA:I = 0x4

.field public static final SORT_ORDER_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "ManageApplications"

.field private static sSdDescription:Ljava/lang/String;


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mExtStoragePath:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mOptionsMenu:Landroid/view/Menu;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mShowBackground:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mDefaultListType:I

    new-instance v0, Lcom/android/settingsstock/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/applications/ManageApplications$2;-><init>(Lcom/android/settingsstock/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settingsstock/applications/ManageApplications;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settingsstock/applications/ManageApplications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settingsstock/applications/ManageApplications;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settingsstock/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settingsstock/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingsstock/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private getSdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    array-length v1, v3

    const-string v2, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    const-string v2, "error"

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isExSdcardInserted()Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const-string v4, "ManageApplications"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Util:service is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    const-string v4, "ManageApplications"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Util:mountService is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->isSDExist()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "ManageApplications"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Util:RemoteException when isSDExist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settingsstock/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b063a

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b065e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b065f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0660

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b034d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/settingsstock/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settingsstock/applications/ManageApplications$1;-><init>(Lcom/android/settingsstock/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v13, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v13}, Lcom/android/settingsstock/applications/ManageApplications;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingsstock/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingsstock/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "classname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    if-nez v8, :cond_0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    :cond_0
    const-class v1, Lcom/android/settingsstock/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1
    const/4 v10, 0x1

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    const-string v1, "sortOrder"

    iget v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    const-string v1, "defaultListType"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-eq v12, v3, :cond_3

    move v10, v12

    :cond_3
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mShowBackground:Z

    :cond_4
    iput v10, p0, Lcom/android/settingsstock/applications/ManageApplications;->mDefaultListType:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v9, v2, v13}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0682

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0681

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mExtStoragePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/applications/ManageApplications;->getSdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingsstock/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    new-instance v0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b0665

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settingsstock/applications/ManageApplications;Lcom/android/settingsstock/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settingsstock/applications/AppClickListener;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/settingsstock/applications/ManageApplications;->isExSdcardInserted()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    sget-object v3, Lcom/android/settingsstock/applications/ManageApplications;->sSdDescription:Ljava/lang/String;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settingsstock/applications/ManageApplications;Lcom/android/settingsstock/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settingsstock/applications/AppClickListener;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b0666

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v13

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settingsstock/applications/ManageApplications;Lcom/android/settingsstock/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settingsstock/applications/AppClickListener;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0b0664

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;-><init>(Lcom/android/settingsstock/applications/ManageApplications;Lcom/android/settingsstock/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settingsstock/applications/AppClickListener;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    const-class v1, Lcom/android/settingsstock/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".StorageUse"

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    const/4 v10, 0x3

    goto/16 :goto_1

    :cond_9
    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v10, 0x3

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v0, 0x7f0b0659

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0b065a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x6

    const v1, 0x7f0b065b

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x7

    const v1, 0x7f0b065c

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v0, 0x8

    const v1, 0x7f0b065d

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    iput-object p1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/android/settingsstock/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040048

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object p2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f0800c7

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/settingsstock/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/android/settingsstock/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/settingsstock/applications/ManageApplications;)V

    iget-object v5, p0, Lcom/android/settingsstock/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v5, p0, Lcom/android/settingsstock/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v5, 0x7f0800c8

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "resetDialog"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->buildResetDialog()V

    :cond_1
    if-nez p3, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget v5, v3, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListType:I

    iget v6, p0, Lcom/android/settingsstock/applications/ManageApplications;->mDefaultListType:I

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/settingsstock/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_2
    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {}, Lcom/android/settingsstock/applications/ApplicationsState;->removeInstance()V

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mApplicationsState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/ApplicationsState;->exitBackgroundThread()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->detachView()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingsstock/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    iget-object v1, p1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/applications/ManageApplications;->startApplicationDetailsActivity()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    :cond_0
    iput v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/settingsstock/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    :cond_2
    return v1

    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    iput-boolean v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mShowBackground:Z

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)Lcom/android/settingsstock/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)Lcom/android/settingsstock/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settingsstock/applications/RunningProcessesView;->mAdapter:Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    iput-boolean v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mShowBackground:Z

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)Lcom/android/settingsstock/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)Lcom/android/settingsstock/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingsstock/applications/RunningProcessesView;->mAdapter:Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mActivityResumed:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->pause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mActivityResumed:Z

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/applications/ManageApplications;->updateCurrentTab(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settingsstock/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method tabForType(I)Lcom/android/settingsstock/applications/ManageApplications$TabInfo;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget v2, v1, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iput-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-boolean v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/settingsstock/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/settingsstock/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/settingsstock/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->resume(I)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->pause()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->updateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mCurTab:Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/applications/ManageApplications;->tabForType(I)Lcom/android/settingsstock/applications/ManageApplications$TabInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    #getter for: Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)Lcom/android/settingsstock/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/settingsstock/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/settingsstock/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/settingsstock/applications/ManageApplications$TabInfo;)Lcom/android/settingsstock/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settingsstock/applications/RunningProcessesView;->mAdapter:Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/settingsstock/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    :goto_1
    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_4

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_5

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settingsstock/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    move v4, v2

    goto :goto_4
.end method
