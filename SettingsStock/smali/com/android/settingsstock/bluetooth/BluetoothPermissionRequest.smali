.class public final Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionRequest.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NOTIFICATION_ID:I = 0x1080080

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionRequest"


# instance fields
.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mRequestType:I

.field mReturnClass:Ljava/lang/String;

.field mReturnPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    return-void
.end method

.method private checkUserChoice()Z
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget v7, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    if-eq v7, v12, :cond_0

    move v6, v5

    :goto_0
    return v6

    :cond_0
    iget-object v7, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v7}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v4

    if-nez v4, :cond_2

    move v6, v5

    goto :goto_0

    :cond_2
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    if-ne v4, v10, :cond_3

    const-string v7, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-direct {p0, v3, v10, v7, v10}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    const/4 v5, 0x1

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_3
    if-ne v4, v12, :cond_4

    const/4 v7, 0x0

    invoke-direct {p0, v3, v11, v7, v11}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const-string v7, "BluetoothPermissionRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad phonebookPermission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    iput-object v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    const-string v9, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    const-string v9, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v9, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;

    invoke-virtual {v1, p1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v9, 0x1000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v10, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mRequestType:I

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.extra.DEVICE"

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnPackage:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.extra.CLASS_NAME"

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->checkUserChoice()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v9, "power"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {p1, v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothPreferences;->shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.bluetooth.device.extra.DEVICE"

    iget-object v10, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v10, 0x2

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v6, Landroid/app/Notification;

    const v9, 0x1080080

    const v10, 0x7f0b02ee

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionRequest;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const v9, 0x7f0b02ee

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b02ef

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p1, v11, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v6, p1, v9, v10, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v9, 0x18

    iput v9, v6, Landroid/app/Notification;->flags:I

    const/4 v9, 0x1

    iput v9, v6, Landroid/app/Notification;->defaults:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p1, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const v9, 0x1080080

    invoke-virtual {v7, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const-string v9, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const v9, 0x1080080

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method
