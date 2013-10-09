.class public Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;
.super Landroid/app/Fragment;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$2;,
        Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;
    }
.end annotation


# static fields
.field public static final ACTION_APP_DETAILS:I = 0x5

.field public static final ACTION_BLUETOOTH_SETTINGS:I = 0x3

.field public static final ACTION_DISPLAY_SETTINGS:I = 0x1

.field public static final ACTION_FORCE_STOP:I = 0x7

.field public static final ACTION_LOCATION_SETTINGS:I = 0x6

.field public static final ACTION_REPORT:I = 0x8

.field public static final ACTION_WIFI_SETTINGS:I = 0x2

.field public static final ACTION_WIRELESS_SETTINGS:I = 0x4

.field public static final EXTRA_DETAIL_TYPES:Ljava/lang/String; = "types"

.field public static final EXTRA_DETAIL_VALUES:Ljava/lang/String; = "values"

.field public static final EXTRA_DRAIN_TYPE:Ljava/lang/String; = "drainType"

.field public static final EXTRA_GAUGE:Ljava/lang/String; = "gauge"

.field public static final EXTRA_ICON_ID:Ljava/lang/String; = "iconId"

.field public static final EXTRA_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final EXTRA_NO_COVERAGE:Ljava/lang/String; = "noCoverage"

.field public static final EXTRA_PERCENT:Ljava/lang/String; = "percent"

.field public static final EXTRA_REPORT_CHECKIN_DETAILS:Ljava/lang/String; = "report_checkin_details"

.field public static final EXTRA_REPORT_DETAILS:Ljava/lang/String; = "report_details"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_USAGE_DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_USAGE_SINCE:Ljava/lang/String; = "since"

.field private static final TAG:Ljava/lang/String; = "PowerUsageDetail"

.field public static final USAGE_SINCE_RESET:I = 0x2

.field public static final USAGE_SINCE_UNPLUGGED:I = 0x1

.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/view/ViewGroup;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field mInstaller:Landroid/content/ComponentName;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    :array_0
    .array-data 0x4
        0x84t 0x7t 0xbt 0x7ft
        0x85t 0x7t 0xbt 0x7ft
        0x83t 0x7t 0xbt 0x7ft
        0x89t 0x7t 0xbt 0x7ft
        0x8bt 0x7t 0xbt 0x7ft
        0x87t 0x7t 0xbt 0x7ft
        0x8et 0x7t 0xbt 0x7ft
        0x92t 0x7t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f04005b

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v5, 0x7f080079

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v5, 0x7f0800ec

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 10

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private createDetails()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v13, "title"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    const-string v13, "percent"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v13, "gauge"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v13, "since"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUsageSince:I

    const-string v13, "uid"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUid:I

    const-string v13, "drainType"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    const-string v13, "noCoverage"

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v13, v14, v15}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-string v13, "iconPackage"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "iconId"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v9, v7, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    iget-object v1, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x1020010

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getDescriptionForDrainType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v13, "types"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTypes:[I

    const-string v13, "values"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mValues:[D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x1020016

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x1020014

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0b090b

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f0800f0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f08019f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f0801a0

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x102000d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    invoke-virtual {v10, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x1020006

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f0800f1

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f0800f2

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v14, 0x2710

    if-lt v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v14, 0x7f0b0644

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v14, 0x10403e0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "send_action_app_error"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v13, v13

    if-lez v13, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v13, v14, v15}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3
    return-void

    :cond_3
    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :catch_0
    move-exception v13

    goto :goto_1

    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-class v1, Lcom/android/settingsstock/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b04e1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :pswitch_1
    const-class v1, Lcom/android/settingsstock/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0434

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :pswitch_2
    const-class v1, Lcom/android/settingsstock/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b03cc

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :pswitch_3
    const-class v1, Lcom/android/settingsstock/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0352

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    :pswitch_5
    const-class v1, Lcom/android/settingsstock/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b037c

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v2, v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_4

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_1
    if-eqz v0, :cond_0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    move v1, v7

    :cond_0
    const/4 v5, 0x1

    sget-object v6, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$settingsstock$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v8, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v8}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move-object v3, v6

    goto :goto_0

    :cond_4
    move-object v0, v6

    goto :goto_1

    :pswitch_0
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    const v6, 0x7f0b077e

    const v7, 0x7f0b078f

    const/4 v8, 0x5

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    :cond_5
    iget-boolean v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v6, :cond_1

    const v6, 0x7f0b037c

    const v7, 0x7f0b0790

    const/4 v8, 0x6

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    goto :goto_2

    :pswitch_1
    const v6, 0x7f0b0510

    const v8, 0x7f0b0788

    invoke-direct {p0, v6, v8, v7}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    goto :goto_2

    :pswitch_2
    const v6, 0x7f0b0434

    const v7, 0x7f0b078a

    const/4 v8, 0x2

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    goto :goto_2

    :pswitch_3
    const v6, 0x7f0b03cc

    const v7, 0x7f0b078c

    const/4 v8, 0x3

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    goto :goto_2

    :pswitch_4
    iget-wide v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v8, 0x4024

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    const v6, 0x7f0b0352

    const v7, 0x7f0b0786

    const/4 v8, 0x4

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->addControl(III)V

    const/4 v5, 0x0

    goto :goto_2

    :catch_0
    move-exception v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v14, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v14, v14

    if-ge v3, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v14, v14, v3

    const-wide/16 v16, 0x0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v14, v14, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v14, v14, v3

    packed-switch v14, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v15, v15, v3

    invoke-static/range {v14 .. v16}, Lcom/android/settingsstock/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v11

    :goto_3
    const v14, 0x7f04005c

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v14, 0x7f0800b9

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0800ee

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0800ef

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v13}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    add-float v10, v8, v12

    const/high16 v14, 0x43e1

    cmpl-float v14, v10, v14

    if-lez v14, :cond_1

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v15, v15, v3

    invoke-static/range {v14 .. v16}, Lcom/android/settingsstock/fuelgauge/Utils;->formatBytes(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :pswitch_2
    const-string v14, "%d%%"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mValues:[D

    move-object/from16 v17, v0

    aget-wide v17, v17, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->floor(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    :pswitch_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto/16 :goto_2

    :cond_1
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0774
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 10

    const/4 v8, 0x1

    if-ge p1, v8, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0800f5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_0

    :try_start_0
    iget-object v8, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    :cond_4
    const v8, 0x7f04005e

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v8, 0x7f0800b9

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private getDescriptionForDrainType()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private killProcesses()V
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removePackagesSection()V
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0800f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0800f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    iget-object v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    const-string v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    const-string v4, "duration"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    const-string v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    const-string v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settingsstock/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b063a

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->doAction(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04005d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->createDetails()V

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->mStartTime:J

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;->checkForceStop()V

    return-void
.end method
