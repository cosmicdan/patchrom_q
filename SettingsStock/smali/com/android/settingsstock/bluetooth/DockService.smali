.class public final Lcom/android/settingsstock/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISABLE_BT_GRACE_PERIOD:J = 0x7d0L

.field private static final INVALID_STARTID:I = -0x64

.field private static final KEY_CONNECT_RETRY_COUNT:Ljava/lang/String; = "connect_retry_count"

.field private static final KEY_DISABLE_BT:Ljava/lang/String; = "disable_bt"

.field private static final KEY_DISABLE_BT_WHEN_UNDOCKED:Ljava/lang/String; = "disable_bt_when_undock"

.field private static final MAX_CONNECT_RETRY:I = 0x6

.field private static final MSG_TYPE_DISABLE_BT:I = 0x22b

.field private static final MSG_TYPE_DOCKED:I = 0xde

.field private static final MSG_TYPE_SHOW_UI:I = 0x6f

.field private static final MSG_TYPE_UNDOCKED_PERMANENT:I = 0x1bc

.field private static final MSG_TYPE_UNDOCKED_TEMPORARY:I = 0x14d

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "dock_settings"

.field private static final TAG:Ljava/lang/String; = "DockService"

.field private static final UNDOCKED_GRACE_PERIOD:J = 0x3e8L


# instance fields
.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:[Z

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

.field private final mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

.field private mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, -0x64

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOnStartId:I

    iput v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOffStartId:I

    new-instance v0, Lcom/android/settingsstock/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/DockService$2;-><init>(Lcom/android/settingsstock/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    new-instance v0, Lcom/android/settingsstock/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/DockService$3;-><init>(Lcom/android/settingsstock/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/settingsstock/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/DockService$4;-><init>(Lcom/android/settingsstock/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/android/settingsstock/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/DockService$5;-><init>(Lcom/android/settingsstock/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingsstock/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingsstock/bluetooth/DockService;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settingsstock/bluetooth/DockService;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 13

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    array-length v7, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    aget-boolean v4, v0, v6

    if-eqz v4, :cond_3

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->enable()Z

    const/16 v10, 0xc

    if-eq v1, v10, :cond_3

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingStartId:I

    const/16 v10, 0xb

    if-eq v1, v10, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "disable_bt_when_undock"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :try_start_2
    iput-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    array-length v10, v10

    if-ge v5, v10, :cond_7

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    aget-object v8, v10, v5

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_6

    const/4 v3, 0x1

    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1, v10}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_5

    invoke-virtual {v2}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    invoke-interface {v2, p1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v6, 0x0

    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v8}, Lcom/android/settingsstock/bluetooth/DockService;->startForeground(ILandroid/app/Notification;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settingsstock/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/settingsstock/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/settingsstock/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v13

    const v6, 0x7f0b040f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settingsstock/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settingsstock/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v3, v13, v6, v8}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f040084

    const/4 v8, 0x0

    invoke-virtual {v12, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f080164

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    if-nez v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/settingsstock/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v15, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v15, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v14, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x4160

    mul-float/2addr v6, v14

    float-to-int v5, v6

    const/high16 v6, 0x4160

    mul-float/2addr v6, v14

    float-to-int v7, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    const v6, 0x104000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settingsstock/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settingsstock/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingsstock/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7d9

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settingsstock/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const v6, 0x7f0b040f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settingsstock/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f040038

    const/4 v8, 0x0

    invoke-virtual {v12, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f080082

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "dock_audio_media_enabled"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v8, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v9, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_3

    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothStateOn(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v6, -0x64

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/android/settingsstock/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_0
    iput-object v8, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingStartId:I

    invoke-static {p0, v4}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v6, :cond_2

    iget v4, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    iput v6, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOnStartId:I

    :cond_2
    invoke-static {p0, p1}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v4}, Lcom/android/settingsstock/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settingsstock/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_4
    const-string v4, "disable_bt"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_1

    iput p1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "disable_bt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 4

    const/16 v3, -0x64

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    monitor-enter p0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/settingsstock/bluetooth/DockService;->handleBluetoothStateOn(I)V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0, p2}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :try_start_1
    iget v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v1}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, -0x64

    iput v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOffStartId:I

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->enable()Z

    iput p2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_0

    :cond_4
    invoke-static {p0, p2}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingsstock/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/settingsstock/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingsstock/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;I)V
    .locals 7

    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settingsstock/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settingsstock/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    :cond_0
    invoke-static {p0, p3}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 6

    const v3, 0x7f0b0411

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v1, 0x1

    :goto_1
    new-array v2, v1, [Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    new-array v0, v1, [Ljava/lang/CharSequence;

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settingsstock/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingsstock/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v4

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v2, v4

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_3
    const v2, 0x7f0b0410

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingsstock/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v5

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v4

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v5

    invoke-interface {v3, p1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfiles:[Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private msgTypeDisableBluetooth(I)Z
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "disable_bt"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput p1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingTurnOffStartId:I

    goto :goto_0
.end method

.method private msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x1bc

    invoke-virtual {v3, v4}, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    invoke-virtual {v3, v4}, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/settingsstock/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingsstock/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    move-object v0, p1

    new-instance v3, Lcom/android/settingsstock/bluetooth/DockService$1;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/android/settingsstock/bluetooth/DockService$1;-><init>(Lcom/android/settingsstock/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dock_audio_media_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    const/4 v3, 0x3

    if-ne p2, v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v3, p2, p3}, Lcom/android/settingsstock/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "disable_bt_when_undock"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt_when_undock"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 6

    const/4 v3, 0x0

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "android.intent.extra.DOCK_STATE"

    const/16 v5, -0x4d2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-object v3

    :pswitch_0
    const/16 v1, 0x14d

    :goto_1
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_0

    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :pswitch_2
    const-string v4, "com.android.settingsstock.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_1

    const-string v4, "DockService"

    const-string v5, "device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v1, 0x6f

    goto :goto_1

    :cond_2
    const/16 v1, 0xde

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :cond_0
    const/4 v0, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_2

    const/16 v5, 0x14d

    if-eq v2, v5, :cond_2

    if-nez v0, :cond_2

    invoke-static {p0, v3}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :sswitch_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settingsstock/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settingsstock/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v1, v3}, Lcom/android/settingsstock/bluetooth/DockService;->msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v1, v4, v3}, Lcom/android/settingsstock/bluetooth/DockService;->msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v3}, Lcom/android/settingsstock/bluetooth/DockService;->msgTypeDisableBluetooth(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method declared-synchronized hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    invoke-static {p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_1

    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DockService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    new-instance v2, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settingsstock/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settingsstock/bluetooth/DockService$1;)V

    iput-object v2, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_2
    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mDeviceManager:Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/DockService;->mServiceHandler:Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;

    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 v8, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez p1, :cond_1

    invoke-static {p0, p3}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/android/settingsstock/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v8, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingsstock/bluetooth/HeadsetProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settingsstock/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    :cond_3
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v8, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DockService;->mProfileManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingsstock/bluetooth/A2dpProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settingsstock/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {p0, p3}, Lcom/android/settingsstock/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_0

    :cond_5
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xde

    if-ne v4, v5, :cond_6

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    iput p3, v1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1}, Lcom/android/settingsstock/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
