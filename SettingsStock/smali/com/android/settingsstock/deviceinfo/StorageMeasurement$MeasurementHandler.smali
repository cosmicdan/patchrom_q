.class Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# static fields
.field public static final MSG_COMPLETED:I = 0x4

.field public static final MSG_CONNECTED:I = 0x2

.field public static final MSG_DISCONNECT:I = 0x3

.field public static final MSG_INVALIDATE:I = 0x5

.field public static final MSG_MEASURE:I = 0x1


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    new-instance v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$102(Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 6

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "measureApproximateStorage, path is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    #setter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v3, v4, v5}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;J)J

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    #setter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v3, v4, v5}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$602(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #calls: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v3}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "StorageMeasurement"

    const-string v4, "Problem in container service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    move-object v11, v4

    :goto_0
    if-nez v11, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v5}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$600(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    const-string v4, "user"

    invoke-virtual {v11, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v24

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    new-instance v12, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v12, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v15, 0x1

    :goto_2
    const-string v4, "StorageMeasurement"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "measureMedia is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "mIsInternal is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    move-object/from16 v26, v0

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static/range {v26 .. v26}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " isEmulated: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mIsPrimary is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    move-object/from16 v26, v0

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static/range {v26 .. v26}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_6

    invoke-static {}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$1000()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #calls: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v18

    iget-object v4, v5, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v12}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    #calls: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v4, v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    new-instance v22, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual/range {v22 .. v22}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, p1

    #calls: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v18

    iget-object v4, v5, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-wide/from16 v1, v18

    #calls: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v16

    goto :goto_4

    :cond_a
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    const/16 v4, 0x2200

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v25

    mul-int v8, v4, v25

    new-instance v3, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$StatsObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;)Z

    move-result v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;

    #calls: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-boolean v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    :cond_4
    if-nez v0, :cond_5

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_5
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;

    #calls: Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    :pswitch_4
    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
