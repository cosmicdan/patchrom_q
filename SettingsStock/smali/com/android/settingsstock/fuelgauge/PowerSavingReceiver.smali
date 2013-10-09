.class public Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingReceiver.java"


# static fields
.field public static final POWER_NOTIFICATION:I = 0x1

.field static hasRestore:Z

.field static powerOccerd:Z


# instance fields
.field private power_saving_BT:Z

.field private power_saving_WiFi:Z

.field private power_saving_brightness:Z

.field private power_saving_gps:Z

.field private power_saving_level:I

.field private power_saving_mode:Z

.field private power_saving_sleep:Z

.field private power_saving_sync:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_mode:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_level:I

    iput-boolean v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_BT:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_WiFi:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_gps:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_sync:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_brightness:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_sleep:Z

    return-void
.end method

.method private modifyBrightness(I)V
    .locals 2

    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private restoreStatus(Landroid/content/Context;)V
    .locals 13

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_saving_record_screen_brightness_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_saving_record_screen_brightness"

    const/16 v12, 0x14

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_saving_record_screen_off_timeout"

    const/16 v12, 0x5dc

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_saving_record_bt"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_saving_record_wifi"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_saving_record_gps"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "power_saving_record_sync"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_a

    const/4 v6, 0x1

    :goto_3
    const-string v10, "wifi"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    if-nez v8, :cond_0

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v10

    const/16 v11, 0xc

    if-ne v10, v11, :cond_b

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_4
    const-string v10, "location"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    if-nez v4, :cond_3

    const-string v10, "gps"

    invoke-virtual {v1, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gps"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_4
    if-nez v6, :cond_5

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    const/4 v10, 0x1

    invoke-static {v10}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_brightness_mode"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_brightness"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_off_timeout"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_4
.end method

.method private setSystemNotify(IILandroid/content/Context;)V
    .locals 7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "level"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v5, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;

    invoke-virtual {v1, p3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v5, 0x0

    const/high16 v6, 0x4000

    invoke-static {p3, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0944

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0945

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const-string v5, "notification"

    invoke-virtual {p3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_mode"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_mode:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_mode_level"

    const/16 v22, 0xa

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_level:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_wifi"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_WiFi:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_bluetooth"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_BT:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_gps"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_gps:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_sync"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_sync:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_screen_brightness_switch"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_c

    const/16 v20, 0x1

    :goto_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_brightness:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_screen_off_timeout_switch"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x1

    :goto_6
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_sleep:Z

    const-string v20, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const-string v20, "status"

    const/16 v21, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v20, "level"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_mode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_level:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v11, v0, :cond_e

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v6, v0, :cond_e

    sget-boolean v20, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    if-nez v20, :cond_6

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v11, v1, v2}, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->setSystemNotify(IILandroid/content/Context;)V

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->hasRestore:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_brightness:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_screen_brightness"

    const/16 v22, 0x14

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_brightness"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_brightness_mode"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->modifyBrightness(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_sleep:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "power_saving_screen_off_timeout"

    const/16 v22, 0x3a98

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_off_timeout"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_WiFi:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    const-string v20, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v20

    if-eqz v20, :cond_2

    const-string v20, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v17

    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_BT:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v20

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isBluetoothWorking()Z

    move-result v20

    if-nez v20, :cond_3

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_gps:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const-string v20, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/LocationManager;

    const-string v20, "gps"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual {v10}, Landroid/location/LocationManager;->isGpsRunning()Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "gps"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_sync:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v18

    const-string v20, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/ConnectivityManager;

    invoke-virtual/range {v20 .. v20}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    if-eqz v18, :cond_6

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v20

    if-gtz v20, :cond_6

    :cond_5
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_6
    :goto_7
    return-void

    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_5

    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_mode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_level:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v11, v0, :cond_6

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_6

    sget-boolean v20, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->hasRestore:Z

    if-nez v20, :cond_f

    invoke-direct/range {p0 .. p1}, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->restoreStatus(Landroid/content/Context;)V

    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->hasRestore:Z

    :cond_f
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    const-string v20, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_7

    :cond_10
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->power_saving_mode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->hasRestore:Z

    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/android/settingsstock/fuelgauge/PowerSavingService;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "performance_mode"

    const/16 v22, -0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v9, 0x0

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_12

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "performance_mode"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    const/4 v14, 0x0

    :cond_12
    if-nez v14, :cond_13

    const-string v15, "gov-ondemand"

    :goto_9
    const-string v20, "ctl.start"

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v14, :cond_14

    const-string v15, "tm-ondemand"

    :goto_a
    const-string v20, "ctl.start"

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_13
    const-string v15, "gov-smartass"

    goto :goto_9

    :cond_14
    const-string v15, "tm-smartass"

    goto :goto_a

    :catch_0
    move-exception v20

    goto :goto_8
.end method
