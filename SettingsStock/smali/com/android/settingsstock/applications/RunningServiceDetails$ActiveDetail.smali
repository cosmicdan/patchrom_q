.class Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetail"
.end annotation


# instance fields
.field mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

.field mCategory:Landroid/view/View;

.field mInstaller:Landroid/content/ComponentName;

.field mIntent:Landroid/content/Intent;

.field mLaunch:Landroid/view/View;

.field mLaunchButton:Landroid/widget/Button;

.field mManageIntent:Landroid/app/PendingIntent;

.field mReportButton:Landroid/widget/Button;

.field mRootView:Landroid/view/View;

.field mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

.field mStopButton:Landroid/widget/Button;

.field mViewHolder:Lcom/android/settingsstock/applications/RunningProcessesView$ViewHolder;

.field final synthetic this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/applications/RunningServiceDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b000c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_8

    new-instance v17, Landroid/app/ApplicationErrorReport;

    invoke-direct/range {v17 .. v17}, Landroid/app/ApplicationErrorReport;-><init>()V

    const/4 v2, 0x5

    move-object/from16 v0, v17

    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Landroid/app/ApplicationErrorReport;->time:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    new-instance v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v12}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-wide v2, v2, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-wide v4, v4, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    :goto_2
    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    iget-object v3, v3, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "service_dump.txt"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    const/4 v15, 0x0

    :try_start_1
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v2, "activity"

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "-a"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "service"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    if-eqz v16, :cond_d

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v15, v16

    :cond_2
    :goto_3
    const/4 v13, 0x0

    :try_start_4
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v8, v2, [B

    invoke-virtual {v14, v8}, Ljava/io/FileInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    if-eqz v14, :cond_c

    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v13, v14

    :cond_3
    :goto_4
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iput-object v12, v0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settingsstock/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto/16 :goto_2

    :catch_1
    move-exception v2

    move-object/from16 v15, v16

    goto :goto_3

    :catch_2
    move-exception v10

    :goto_5
    :try_start_7
    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t dump service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v15, :cond_2

    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v2

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v15, :cond_6

    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    :cond_6
    :goto_7
    throw v2

    :catch_4
    move-exception v2

    move-object v13, v14

    goto/16 :goto_4

    :catch_5
    move-exception v10

    :goto_8
    :try_start_a
    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read service dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v13, :cond_3

    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_4

    :catch_6
    move-exception v2

    goto/16 :goto_4

    :catchall_1
    move-exception v2

    :goto_9
    if-eqz v13, :cond_7

    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    :cond_7
    :goto_a
    throw v2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_9

    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x1008

    const/high16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_0

    :catch_7
    move-exception v10

    const-string v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_8
    move-exception v10

    const-string v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_9
    move-exception v10

    const-string v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settingsstock/applications/RunningState$BaseItem;

    iget-boolean v2, v2, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-object v3, v3, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settingsstock/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    #calls: Lcom/android/settingsstock/applications/RunningServiceDetails;->finish()V
    invoke-static {v2}, Lcom/android/settingsstock/applications/RunningServiceDetails;->access$100(Lcom/android/settingsstock/applications/RunningServiceDetails;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settingsstock/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;

    iget-object v3, v3, Lcom/android/settingsstock/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settingsstock/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/settingsstock/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    #calls: Lcom/android/settingsstock/applications/RunningServiceDetails;->finish()V
    invoke-static {v2}, Lcom/android/settingsstock/applications/RunningServiceDetails;->access$100(Lcom/android/settingsstock/applications/RunningServiceDetails;)V

    goto/16 :goto_0

    :catch_a
    move-exception v3

    goto/16 :goto_7

    :catch_b
    move-exception v3

    goto/16 :goto_a

    :catchall_2
    move-exception v2

    move-object v13, v14

    goto/16 :goto_9

    :catch_c
    move-exception v10

    move-object v13, v14

    goto/16 :goto_8

    :catchall_3
    move-exception v2

    move-object/from16 v15, v16

    goto/16 :goto_6

    :catch_d
    move-exception v10

    move-object/from16 v15, v16

    goto/16 :goto_5

    :cond_c
    move-object v13, v14

    goto/16 :goto_4

    :cond_d
    move-object/from16 v15, v16

    goto/16 :goto_3
.end method

.method stopActiveService(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settingsstock/applications/RunningState$ServiceItem;

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    iget-object v2, v0, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #calls: Lcom/android/settingsstock/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V
    invoke-static {v1, v2}, Lcom/android/settingsstock/applications/RunningServiceDetails;->access$000(Lcom/android/settingsstock/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/settingsstock/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/RunningState;->updateNow()V

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    #calls: Lcom/android/settingsstock/applications/RunningServiceDetails;->finish()V
    invoke-static {v1}, Lcom/android/settingsstock/applications/RunningServiceDetails;->access$100(Lcom/android/settingsstock/applications/RunningServiceDetails;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    iget-boolean v1, v1, Lcom/android/settingsstock/applications/RunningServiceDetails;->mShowBackground:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settingsstock/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settingsstock/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/android/settingsstock/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/RunningState;->updateNow()V

    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    #calls: Lcom/android/settingsstock/applications/RunningServiceDetails;->finish()V
    invoke-static {v1}, Lcom/android/settingsstock/applications/RunningServiceDetails;->access$100(Lcom/android/settingsstock/applications/RunningServiceDetails;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settingsstock/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/settingsstock/applications/RunningServiceDetails;->mState:Lcom/android/settingsstock/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settingsstock/applications/RunningState;->updateNow()V

    goto :goto_0
.end method
