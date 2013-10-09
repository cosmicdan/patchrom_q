.class public Lcom/android/settingsstock/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/settingsstock/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/settingsstock/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settingsstock/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settingsstock/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DYNAMIC_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"

.field private static final CLEAR_CACHE:I = 0x3

.field private static final CLEAR_USER_DATA:I = 0x1

.field private static final DLG_APP_NOT_FOUND:I = 0x3

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_CANNOT_CLEAR_DATA:I = 0x4

.field private static final DLG_CLEAR_DATA:I = 0x1

.field private static final DLG_DISABLE:I = 0x7

.field private static final DLG_DISABLE_NOTIFICATIONS:I = 0x8

.field private static final DLG_FACTORY_RESET:I = 0x2

.field private static final DLG_FORCE_STOP:I = 0x5

.field private static final DLG_MOVE_FAILED:I = 0x6

.field private static final DLG_SPECIAL_DISABLE:I = 0x9

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1

.field private static final PACKAGE_MOVE:I = 0x4

.field public static final REQUEST_MANAGE_SPACE:I = 0x2

.field public static final REQUEST_UNINSTALL:I = 0x1

.field private static final SIZE_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InstalledAppDetails"

.field public static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDycSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExtStoragePath:Ljava/lang/String;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalCodeSizeLabel:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mExternalDataSizeLabel:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInitialized:Z

.field private mIntent:Landroid/content/Intent;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mLaunchButton:Landroid/widget/Button;

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mSDcardDescription:Ljava/lang/String;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/settingsstock/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/settingsstock/applications/ApplicationsState;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveInProgress:Z

    iput-boolean v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCanClearData:Z

    iput-boolean v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mHaveSizes:Z

    iput-wide v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastCodeSize:J

    iput-wide v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iput-wide v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iput-wide v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastTotalSize:J

    new-instance v0, Lcom/android/settingsstock/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/applications/InstalledAppDetails$1;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/applications/InstalledAppDetails$2;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    new-instance v0, Lcom/android/settingsstock/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/applications/InstalledAppDetails$3;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/applications/InstalledAppDetails$4;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/applications/InstalledAppDetails$4;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDycSwapReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/applications/InstalledAppDetails;)Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settingsstock/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settingsstock/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settingsstock/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settingsstock/applications/InstalledAppDetails;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settingsstock/applications/InstalledAppDetails;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settingsstock/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settingsstock/applications/InstalledAppDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refeshUi2SD()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/applications/InstalledAppDetails;)Lcom/android/settingsstock/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingsstock/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/applications/InstalledAppDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->initDataButtons()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settingsstock/applications/InstalledAppDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settingsstock/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingsstock/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settingsstock/applications/InstalledAppDetails;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settingsstock/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method private checkForceStop()V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop --- mDpm.packageHasActiveAdmins(mPackageInfo.packageName"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/android/settingsstock/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop,(mAppEntry.info.flags&ApplicationInfo.FLAG_STOPPED) == 0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/settingsstock/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "InstalledAppDetails"

    const-string v3, "checkForceStop --- sendOrderedBroadcast"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settingsstock/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v2, p1}, Lcom/android/settingsstock/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->checkForceStop()V

    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0689

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b068a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b068b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b068c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b068d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string v0, ""

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

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

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

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

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "core system applications :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0b064d

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return v0

    :cond_2
    sget-object v5, Lcom/android/settingsstock/Utils;->disableAppList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/settingsstock/Utils;->disableAppList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDisableAppsList contains :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v6, 0x7f0b064d

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_4

    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAppEntry.info.enabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " packagename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0b064d

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const v5, 0x7f0b064e

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "else :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "InstalledAppDetails"

    const-string v6, "Unable to get package info"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private initDataButtons()V
    .locals 5

    const v4, 0x7f0b064f

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCanClearData:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0b0661

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "InstalledAppDetails"

    const-string v1, "/mnt/sdcard is not mounted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const-string v0, "InstalledAppDetails"

    const-string v1, "ApplicationInfo.FLAG_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCanClearData:Z

    :goto_1
    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const-string v0, "InstalledAppDetails"

    const-string v1, "ApplicationInfo.FLAG_INTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "InstalledAppDetails"

    const-string v1, "/mnt/sdcard is mounted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCanClearData:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 10

    const v9, 0x7f0b011d

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->isExSdcardInserted()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_2

    move v0, v3

    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0b0685

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    :goto_2
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x4

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b066b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-virtual {v6, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v6, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;

    invoke-virtual {v5}, Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;->init()V

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    :goto_3
    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 4

    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 6

    const v5, 0x7f0b064a

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v5, 0x7f0b0650

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method

.method private initiateClearUserData()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/settingsstock/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settingsstock/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;)V

    iput-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$ClearUserDataObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/settingsstock/applications/InstalledAppDetails;->showDialogInner(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0b066d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isExSdcardInserted()Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const-string v4, "InstalledAppDetails"

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

    const-string v4, "InstalledAppDetails"

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

    const-string v4, "InstalledAppDetails"

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

.method private isThisASystemPackage()Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared user data result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0b064f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    if-ne v2, v6, :cond_0

    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleared user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settingsstock/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.SETTINGS_PACKAGE_DATA_CLEARED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "packageName"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->checkForceStop()V

    return-void

    :cond_0
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to clear user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 5

    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved package result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveInProgress:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved resources for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshUi()Z

    return-void

    :cond_0
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to move resources , result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refeshUi2SD()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getSdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshSizeLabel(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->initMoveButton()V

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->initDataButtons()V

    return-void
.end method

.method private refreshButtons()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->initUninstallButtons()V

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->initDataButtons()V

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->initMoveButton()V

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->initNotificationButton()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0b0688

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastCodeSize:J

    iget-boolean v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mHaveSizes:Z

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->dataSize:J

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    add-long/2addr v2, v6

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v4, v6

    :cond_3
    :goto_1
    iget-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    iput-wide v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastCodeSize:J

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_5

    iput-wide v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastDataSize:J

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long v0, v6, v8

    iget-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_6

    iput-wide v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastCacheSize:J

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v7, v8}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_b

    :cond_8
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_c
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshSizeLabel(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0646

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0648

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalCodeSizeLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalDataSizeLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private refreshUi()Z
    .locals 44

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    const/16 v39, 0x1

    :goto_0
    return v39

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-object/from16 v39, v0

    if-nez v39, :cond_1

    const/16 v39, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v39, v0

    if-nez v39, :cond_2

    const/16 v39, 0x0

    goto :goto_0

    :cond_2
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    const/16 v21, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v39, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v39, v0

    const v40, 0x7f0800a3

    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v39, v0

    const v40, 0x7f0800a4

    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v39

    if-gtz v39, :cond_3

    if-eqz v21, :cond_5

    :cond_3
    const/4 v13, 0x1

    :goto_2
    if-nez v13, :cond_6

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settingsstock/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v39, v0

    const/high16 v40, 0x1000

    invoke-virtual/range {v39 .. v40}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v39, v0

    const/high16 v40, 0x20

    invoke-virtual/range {v39 .. v40}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string v40, "activity"

    invoke-virtual/range {v39 .. v40}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v39, v0

    const/16 v40, 0x8

    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v39, v0

    const v40, 0x7f0800ac

    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v30

    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v39

    if-gtz v39, :cond_4

    if-eqz v30, :cond_10

    :cond_4
    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_5
    const v39, 0x7f0800ad

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    const v39, 0x7f0800ae

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/LinearLayout;

    if-eqz v30, :cond_11

    const/16 v39, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v39, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v39, 0x7f0800af

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const v40, 0x7f07004c

    const v41, 0x1090008

    invoke-static/range {v39 .. v41}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    const v39, 0x1090009

    move/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    add-int/lit8 v39, v30, -0x1

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v39, Lcom/android/settingsstock/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_6
    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v39

    if-lez v39, :cond_14

    const v39, 0x7f0800b1

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    invoke-virtual/range {v35 .. v35}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v11}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_14

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_14

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    :goto_7
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v22

    move/from16 v1, v39

    if-ge v0, v1, :cond_13

    aget-object v27, v25, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_12

    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    :catch_0
    move-exception v19

    const-string v39, "InstalledAppDetails"

    const-string v40, "mUsbManager.hasDefaults"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_6
    if-eqz v20, :cond_b

    if-eqz v13, :cond_b

    const/16 v38, 0x1

    :goto_9
    if-eqz v20, :cond_c

    const v39, 0x7f0b063d

    move/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_a
    const/16 v37, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0d000b

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    if-eqz v13, :cond_8

    const v39, 0x7f0b0651

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v32, Landroid/text/SpannableString;

    move-object/from16 v0, v32

    invoke-direct {v0, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v38, :cond_7

    new-instance v39, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v40, 0x0

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v41

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    if-nez v37, :cond_d

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v32, v39, v40

    const/16 v40, 0x1

    const-string v41, "\n"

    aput-object v41, v39, v40

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v37

    :cond_8
    :goto_b
    if-eqz v20, :cond_a

    const v39, 0x7f0b0652

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v32, Landroid/text/SpannableString;

    move-object/from16 v0, v32

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v38, :cond_9

    new-instance v39, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v40, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v41

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    if-nez v37, :cond_e

    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v32, v39, v40

    const/16 v40, 0x1

    const-string v41, "\n"

    aput-object v41, v39, v40

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v37

    :cond_a
    :goto_c
    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_b
    const/16 v38, 0x0

    goto/16 :goto_9

    :cond_c
    const v39, 0x7f0b063c

    move/from16 v0, v39

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    :cond_d
    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v37, v39, v40

    const/16 v40, 0x1

    const-string v41, "\n"

    aput-object v41, v39, v40

    const/16 v40, 0x2

    aput-object v32, v39, v40

    const/16 v40, 0x3

    const-string v41, "\n"

    aput-object v41, v39, v40

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v37

    goto/16 :goto_b

    :cond_e
    const/16 v39, 0x4

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aput-object v37, v39, v40

    const/16 v40, 0x1

    const-string v41, "\n"

    aput-object v41, v39, v40

    const/16 v40, 0x2

    aput-object v32, v39, v40

    const/16 v40, 0x3

    const-string v41, "\n"

    aput-object v41, v39, v40

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v37

    goto :goto_c

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_10
    const/16 v39, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    :cond_11
    const/16 v39, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v39, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_12
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v39

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v39

    goto/16 :goto_8

    :cond_13
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v5, v0, :cond_16

    const/16 v39, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/CharSequence;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v39, v0

    const v40, 0x7f0800b0

    invoke-virtual/range {v39 .. v40}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v39, 0x7f0b067a

    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v42

    aput-object v42, v40, v41

    const/16 v41, 0x1

    aput-object v10, v40, v41

    move-object/from16 v0, v31

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->checkForceStop()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshButtons()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshSizeInfo()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v39, v0

    if-nez v39, :cond_1b

    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/applications/InstalledAppDetails;->mInitialized:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v39, v0

    const/high16 v40, 0x80

    and-int v39, v39, v40

    if-nez v39, :cond_1a

    const/16 v39, 0x1

    :goto_e
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/applications/InstalledAppDetails;->mShowUninstalled:Z

    :cond_15
    const/16 v39, 0x1

    goto/16 :goto_0

    :cond_16
    const/16 v39, 0x2

    move/from16 v0, v39

    if-ne v5, v0, :cond_17

    const v39, 0x7f0b067b

    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    aput-object v42, v40, v41

    const/16 v41, 0x1

    const/16 v42, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v31

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_d

    :cond_17
    add-int/lit8 v39, v5, -0x2

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/CharSequence;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v22, v5, -0x3

    :goto_f
    if-ltz v22, :cond_19

    if-nez v22, :cond_18

    const v39, 0x7f0b067d

    :goto_10
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    aput-object v42, v40, v41

    const/16 v41, 0x1

    aput-object v10, v40, v41

    move-object/from16 v0, v31

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v22, v22, -0x1

    goto :goto_f

    :cond_18
    const v39, 0x7f0b067e

    goto :goto_10

    :cond_19
    const v39, 0x7f0b067c

    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput-object v10, v40, v41

    const/16 v41, 0x1

    add-int/lit8 v42, v5, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v31

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_d

    :cond_1a
    const/16 v39, 0x0

    goto/16 :goto_e

    :cond_1b
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x2200

    invoke-virtual/range {v39 .. v41}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v39, v0

    if-nez v39, :cond_15

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v39, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v40, 0x80

    and-int v39, v39, v40

    if-eqz v39, :cond_1c

    const/16 v39, 0x1

    goto/16 :goto_0

    :cond_1c
    const/16 v39, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v19

    const/16 v39, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    const v0, 0x7f0b063c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0653

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/settingsstock/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v3

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f08008c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080057

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/settingsstock/applications/ApplicationsState;->ensureIcon(Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;)V

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0800c9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0800ca

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0684

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    :try_start_0
    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-interface {v2, v3, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4

    invoke-static {p1, p2}, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean p3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v5, :cond_1

    iget-boolean v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    new-instance v2, Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v5, v5}, Lcom/android/settingsstock/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_0

    if-nez p2, :cond_4

    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_5

    const-string v7, "InstalledAppDetails"

    const-string v8, "click uninstall button"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v7, :cond_1

    invoke-direct {p0, v4, v9}, Lcom/android/settingsstock/applications/InstalledAppDetails;->showDialogInner(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_2

    const/4 v6, 0x7

    invoke-direct {p0, v6, v9}, Lcom/android/settingsstock/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    :cond_2
    new-instance v7, Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;

    iget-object v8, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x80

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    invoke-direct {p0, v5, v6, v9}, Lcom/android/settingsstock/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5, v9, v9}, Lcom/android/settingsstock/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_6

    const/16 v6, 0x9

    invoke-direct {p0, v6, v9}, Lcom/android/settingsstock/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_7

    const-string v6, "InstalledAppDetails"

    const-string v7, "click activiies button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    :try_start_0
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v5, v7}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v5, v9}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f0800a3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v7, 0x7f0800a4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "InstalledAppDetails"

    const-string v7, "mUsbManager.clearDefaults"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_9

    const-string v7, "InstalledAppDetails"

    const-string v8, "click clear data button"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/android/settingsstock/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v6, v9}, Lcom/android/settingsstock/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_b

    const-string v6, "InstalledAppDetails"

    const-string v7, "click clear cache button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v6, :cond_a

    new-instance v6, Lcom/android/settingsstock/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v6, p0}, Lcom/android/settingsstock/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;)V

    iput-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$ClearCacheObserver;

    :cond_a
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_c

    const-string v6, "InstalledAppDetails"

    const-string v7, "click force stop button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x5

    invoke-direct {p0, v6, v9}, Lcom/android/settingsstock/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_f

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v7, :cond_d

    new-instance v7, Lcom/android/settingsstock/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v7, p0}, Lcom/android/settingsstock/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;)V

    iput-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$PackageMoveObserver;

    :cond_d
    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x4

    and-int/2addr v7, v8

    if-eqz v7, :cond_e

    move v4, v6

    :cond_e
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "click move app button , and the move flag is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveInProgress:Z

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshButtons()V

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settingsstock/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    :cond_f
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_0

    const-string v6, "InstalledAppDetails"

    const-string v7, "click launch button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b000c

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingsstock/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingsstock/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;

    invoke-virtual {v2, p0}, Lcom/android/settingsstock/applications/ApplicationsState;->newSession(Lcom/android/settingsstock/applications/ApplicationsState$Callbacks;)Lcom/android/settingsstock/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSession:Lcom/android/settingsstock/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    new-instance v2, Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;

    invoke-direct {v2}, Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSession:Lcom/android/settingsstock/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/settingsstock/applications/ApplicationsState$Session;->resume()V

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getSdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.mediatek.SD_SWAP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDycSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0b064b

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const v9, 0x7f0801a0

    const v8, 0x7f08019f

    const/16 v7, 0x8

    const/4 v6, 0x0

    const v4, 0x7f04003d

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0681

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    const v4, 0x7f080092

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    const v4, 0x7f080094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    const v4, 0x7f080099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    const v4, 0x7f080096

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    const v4, 0x7f08009b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v4, 0x7f080095

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalCodeSizeLabel:Landroid/widget/TextView;

    const v4, 0x7f08009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mExternalDataSizeLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSDcardDescription:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshSizeLabel(Ljava/lang/String;)V

    const v4, 0x7f08008d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v5, 0x7f0b0644

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    const v4, 0x7f08008e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f08009c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f08009d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v4, 0x7f0800a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    const v4, 0x7f0800a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const v4, 0x7f0800a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const v4, 0x7f0800a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    const v4, 0x7f0800aa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    const v4, 0x7f0800ab

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    const v4, 0x7f08008f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const v4, 0x7f0800a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    const v4, 0x7f0800a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0800a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    return-object v3
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDycSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSession:Lcom/android/settingsstock/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/ApplicationsState$Session;->resume()V

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshSizeInfo()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSession:Lcom/android/settingsstock/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/ApplicationsState$Session;->pause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails;->mSession:Lcom/android/settingsstock/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/ApplicationsState$Session;->resume()V

    invoke-direct {p0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
