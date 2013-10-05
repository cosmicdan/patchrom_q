.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$Injector;
    }
.end annotation


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "bootevent"

    .prologue
    .line 130
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 131
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, fbp:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 133
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 134
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    .end local v1           #fbp:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1249
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1251
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1253
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 123
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    return-void
.end method

.method public run()V
    .locals 165

    .prologue
    .line 146
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 149
    const-string v7, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 150
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 154
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 157
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 158
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 162
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v135

    .line 164
    .local v135, shutdownAction:Ljava/lang/String;
    if-eqz v135, :cond_0

    invoke-virtual/range {v135 .. v135}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 165
    const/4 v7, 0x0

    move-object/from16 v0, v135

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_12

    const/16 v129, 0x1

    .line 168
    .local v129, reboot:Z
    :goto_0
    invoke-virtual/range {v135 .. v135}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_13

    .line 169
    const/4 v7, 0x1

    invoke-virtual/range {v135 .. v135}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v135

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v128

    .line 174
    .local v128, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v129

    move-object/from16 v1, v128

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 178
    .end local v128           #reason:Ljava/lang/String;
    .end local v129           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v102

    .line 179
    .local v102, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v102

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 v101, 0x0

    .line 181
    .local v101, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 183
    .local v33, headless:Z
    const/16 v109, 0x0

    .line 184
    .local v109, installer:Lcom/android/server/pm/Installer;
    const/16 v65, 0x0

    .line 185
    .local v65, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v88, 0x0

    .line 186
    .local v88, contentService:Landroid/content/ContentService;
    const/16 v111, 0x0

    .line 187
    .local v111, lights:Lcom/android/server/LightsService;
    const/16 v127, 0x0

    .line 188
    .local v127, power:Lcom/android/server/power/PowerManagerService;
    const/16 v94, 0x0

    .line 189
    .local v94, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v74, 0x0

    .line 190
    .local v74, battery:Lcom/android/server/BatteryService;
    const/16 v154, 0x0

    .line 191
    .local v154, vibrator:Lcom/android/server/VibratorService;
    const/16 v70, 0x0

    .line 192
    .local v70, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v118, 0x0

    .line 193
    .local v118, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 194
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 195
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v120, 0x0

    .line 196
    .local v120, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v86, 0x0

    .line 197
    .local v86, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v161, 0x0

    .line 198
    .local v161, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v159, 0x0

    .line 199
    .local v159, wifi:Lcom/android/server/WifiService;
    const/16 v134, 0x0

    .line 200
    .local v134, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v126, 0x0

    .line 201
    .local v126, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 202
    .local v5, context:Landroid/content/Context;
    const/16 v163, 0x0

    .line 204
    .local v163, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v76, 0x0

    .line 205
    .local v76, bluetooth:Landroid/server/BluetoothService;
    const/16 v78, 0x0

    .line 206
    .local v78, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v81, 0x0

    .line 207
    .local v81, bluetoothSocket:Landroid/server/BluetoothSocketService;
    const/16 v62, 0x0

    .line 208
    .local v62, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    const/16 v95, 0x0

    .line 209
    .local v95, dock:Lcom/android/server/DockObserver;
    const/16 v152, 0x0

    .line 210
    .local v152, usb:Lcom/android/server/usb/UsbService;
    const/16 v132, 0x0

    .line 211
    .local v132, serial:Lcom/android/server/SerialService;
    const/16 v147, 0x0

    .line 212
    .local v147, twilight:Lcom/android/server/TwilightService;
    const/16 v150, 0x0

    .line 213
    .local v150, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v130, 0x0

    .line 214
    .local v130, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v143, 0x0

    .line 215
    .local v143, throttle:Lcom/android/server/ThrottleService;
    const/16 v122, 0x0

    .line 216
    .local v122, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v83, 0x0

    .line 217
    .local v83, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v108, 0x0

    .line 218
    .local v108, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v138, 0x0

    .line 220
    .local v138, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v140, 0x0

    .line 222
    .local v140, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    const/16 v64, 0x0

    .line 225
    .local v64, Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    const/16 v103, 0x0

    .line 231
    .local v103, fdm:Lcom/android/server/FrameworkDmService;
    new-instance v149, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v149

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 232
    .local v149, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v149 .. v149}, Landroid/os/HandlerThread;->start()V

    .line 233
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v149 .. v149}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 234
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    new-instance v164, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v164

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 252
    .local v164, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v164 .. v164}, Landroid/os/HandlerThread;->start()V

    .line 253
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v164 .. v164}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 254
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    const/16 v24, 0x0

    .line 276
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v110, Lcom/android/server/pm/Installer;

    invoke-direct/range {v110 .. v110}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_58

    .line 278
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .local v110, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/pm/Installer;->ping()Z

    .line 280
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 284
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 286
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_59

    .line 288
    .end local v127           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 290
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static/range {v101 .. v101}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 293
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5a

    .line 295
    .end local v94           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 297
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v139, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v139

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5b

    .line 299
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v139, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 300
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v141, Lcom/android/server/TelephonyRegistry;

    const/4 v7, 0x1

    move-object/from16 v0, v141

    invoke-direct {v0, v5, v7}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5c

    .line 302
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .local v141, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry2"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 304
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 308
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 310
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    .line 311
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v91

    .line 318
    .local v91, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v91

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 319
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v24, 0x1

    .line 326
    :cond_2
    :goto_3
    if-eqz v101, :cond_16

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v110

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v126

    .line 329
    const/16 v105, 0x0

    .line 331
    .local v105, firstBoot:Z
    :try_start_6
    invoke-interface/range {v126 .. v126}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v105

    .line 335
    :goto_5
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 337
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 342
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 346
    :try_start_8
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v66, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 348
    .end local v65           #accountManager:Landroid/accounts/AccountManagerService;
    .local v66, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_9
    const-string v7, "account"

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5d

    move-object/from16 v65, v66

    .line 353
    .end local v66           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v65       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v7, 0x1

    move/from16 v0, v101

    if-ne v0, v7, :cond_17

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v88

    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/server/MiuiLightsService;

    invoke-direct {v6, v5}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .end local v111           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5e

    .line 365
    .end local v74           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_c
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 367
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v155, Lcom/android/server/VibratorService;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5f

    .line 369
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .local v155, vibrator:Lcom/android/server/VibratorService;
    :try_start_d
    const-string v7, "vibrator"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 373
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 376
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_60

    .line 378
    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_e
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 380
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 384
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_61

    .line 387
    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v7, 0x1

    move/from16 v0, v101

    if-eq v0, v7, :cond_18

    const/16 v22, 0x1

    :goto_8
    if-nez v105, :cond_19

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v163

    .line 392
    const-string v7, "window"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 393
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 395
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v163

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 397
    invoke-virtual/range {v163 .. v163}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 398
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 400
    move-object/from16 v0, v163

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 401
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 406
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 407
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    :goto_a
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v154, v155

    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v109, v110

    .line 457
    .end local v91           #cryptState:Ljava/lang/String;
    .end local v105           #firstBoot:Z
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    :goto_b
    const/16 v92, 0x0

    .line 458
    .local v92, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v136, 0x0

    .line 459
    .local v136, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v106, 0x0

    .line 460
    .local v106, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v71, 0x0

    .line 461
    .local v71, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v124, 0x0

    .line 462
    .local v124, notification:Lcom/android/server/NotificationManagerService;
    const/16 v157, 0x0

    .line 463
    .local v157, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v112, 0x0

    .line 464
    .local v112, location:Lcom/android/server/LocationManagerService;
    const/16 v89, 0x0

    .line 465
    .local v89, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v145, 0x0

    .line 466
    .local v145, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v114, 0x0

    .line 467
    .local v114, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v97, 0x0

    .line 468
    .local v97, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v142, 0x0

    .line 471
    .local v142, thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/4 v7, 0x1

    move/from16 v0, v101

    if-eq v0, v7, :cond_3

    .line 473
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v107, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v107

    move-object/from16 v1, v163

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3

    .line 475
    .end local v106           #imm:Lcom/android/server/InputMethodManagerService;
    .local v107, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_11
    const-string v7, "input_method"

    move-object/from16 v0, v107

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_57

    move-object/from16 v106, v107

    .line 481
    .end local v107           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v106       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    .line 490
    :cond_3
    :goto_d
    :try_start_13
    invoke-virtual/range {v163 .. v163}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5

    .line 496
    :goto_e
    :try_start_14
    invoke-interface/range {v126 .. v126}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6

    .line 502
    :goto_f
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10403e9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_56

    .line 509
    :goto_10
    const/4 v7, 0x1

    move/from16 v0, v101

    if-eq v0, v7, :cond_22

    .line 510
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 516
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v119, Lcom/android/server/MountService;

    move-object/from16 v0, v119

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_7

    .line 518
    .end local v118           #mountService:Lcom/android/server/MountService;
    .local v119, mountService:Lcom/android/server/MountService;
    :try_start_17
    const-string v7, "mount"

    move-object/from16 v0, v119

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_55

    move-object/from16 v118, v119

    .line 525
    .end local v119           #mountService:Lcom/android/server/MountService;
    .restart local v118       #mountService:Lcom/android/server/MountService;
    :cond_4
    :goto_11
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v115, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v115

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8

    .line 527
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v115, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_19
    const-string v7, "lock_settings"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_54

    move-object/from16 v114, v115

    .line 533
    .end local v115           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_12
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v93, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v93

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_9

    .line 535
    .end local v92           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v93, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1b
    const-string v7, "device_policy"

    move-object/from16 v0, v93

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_53

    move-object/from16 v92, v93

    .line 541
    .end local v93           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v92       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v137, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v137

    move-object/from16 v1, v163

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_a

    .line 543
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v137, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1d
    const-string v7, "statusbar"

    move-object/from16 v0, v137

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_52

    move-object/from16 v136, v137

    .line 549
    .end local v137           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_b

    .line 557
    :goto_15
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 559
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c

    .line 565
    :goto_16
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v146, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    .line 567
    .end local v145           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v146, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_21
    const-string v7, "textservices"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_51

    move-object/from16 v145, v146

    .line 573
    .end local v146           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v145       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v121, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v121

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e

    .line 575
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v121, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_23
    const-string v7, "netstats"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_50

    move-object/from16 v29, v121

    .line 581
    .end local v121           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_f

    .line 585
    .end local v120           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_25
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_4f

    .line 591
    :goto_19
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v162, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v162

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_10

    .line 593
    .end local v161           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v162, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_27
    const-string v7, "wifip2p"

    move-object/from16 v0, v162

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_4e

    move-object/from16 v161, v162

    .line 599
    .end local v162           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v161       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v160, Lcom/android/server/WifiService;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_11

    .line 601
    .end local v159           #wifi:Lcom/android/server/WifiService;
    .local v160, wifi:Lcom/android/server/WifiService;
    :try_start_29
    const-string v7, "wifi"

    move-object/from16 v0, v160

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_4d

    move-object/from16 v159, v160

    .line 607
    .end local v160           #wifi:Lcom/android/server/WifiService;
    .restart local v159       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v87, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v87

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_12

    .line 610
    .end local v86           #connectivity:Lcom/android/server/ConnectivityService;
    .local v87, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2b
    const-string v7, "connectivity"

    move-object/from16 v0, v87

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 611
    move-object/from16 v0, v29

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 612
    move-object/from16 v0, v25

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 613
    invoke-virtual/range {v159 .. v159}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 614
    invoke-virtual/range {v161 .. v161}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_4c

    move-object/from16 v86, v87

    .line 620
    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v86       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v134

    .line 622
    const-string v7, "servicediscovery"

    move-object/from16 v0, v134

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_13

    .line 629
    :goto_1d
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v144, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v144

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_14

    .line 631
    .end local v143           #throttle:Lcom/android/server/ThrottleService;
    .local v144, throttle:Lcom/android/server/ThrottleService;
    :try_start_2e
    const-string v7, "throttle"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_4b

    move-object/from16 v143, v144

    .line 638
    .end local v144           #throttle:Lcom/android/server/ThrottleService;
    .restart local v143       #throttle:Lcom/android/server/ThrottleService;
    :goto_1e
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_15

    .line 650
    :goto_1f
    if-eqz v118, :cond_5

    .line 651
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 655
    :cond_5
    if-eqz v65, :cond_6

    .line 656
    :try_start_30
    invoke-virtual/range {v65 .. v65}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_16

    .line 662
    :cond_6
    :goto_20
    if-eqz v88, :cond_7

    .line 663
    :try_start_31
    invoke-virtual/range {v88 .. v88}, Landroid/content/ContentService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17

    .line 669
    :cond_7
    :goto_21
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v125, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v125

    move-object/from16 v1, v136

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_18

    .line 671
    .end local v124           #notification:Lcom/android/server/NotificationManagerService;
    .local v125, notification:Lcom/android/server/NotificationManagerService;
    :try_start_33
    const-string v7, "notification"

    move-object/from16 v0, v125

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 672
    move-object/from16 v0, v25

    move-object/from16 v1, v125

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_4a

    move-object/from16 v124, v125

    .line 678
    .end local v125           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v124       #notification:Lcom/android/server/NotificationManagerService;
    :goto_22
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/ServerThread$Injector;->setMemoryLowThresholdProperty()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 686
    :goto_23
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v113, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .line 688
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .local v113, location:Lcom/android/server/LocationManagerService;
    :try_start_36
    const-string v7, "location"

    move-object/from16 v0, v113

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_49

    move-object/from16 v112, v113

    .line 694
    .end local v113           #location:Lcom/android/server/LocationManagerService;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    :goto_24
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v90, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v90

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1b

    .line 696
    .end local v89           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v90, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_38
    const-string v7, "country_detector"

    move-object/from16 v0, v90

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_48

    move-object/from16 v89, v90

    .line 702
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v89       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_25
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1c

    .line 711
    :goto_26
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v7, "search_engine"

    new-instance v9, Landroid/server/search/SearchEngineManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1d

    .line 720
    :goto_27
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 727
    :goto_28
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 730
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-nez v33, :cond_8

    .line 732
    new-instance v158, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 733
    .end local v157           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v158, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3d
    const-string v7, "wallpaper"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_47

    move-object/from16 v157, v158

    .line 740
    .end local v158           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v157       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_8
    :goto_29
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 742
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_20

    .line 753
    :cond_9
    :goto_2a
    const/16 v73, 0x0

    .line 755
    .local v73, audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-class v7, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-object/from16 v73, v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 760
    :goto_2b
    :try_start_40
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audioProfileService = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v73

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    if-eqz v73, :cond_a

    .line 762
    const-string v7, "audioprofile"

    invoke-interface/range {v73 .. v73}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_22

    .line 772
    :cond_a
    :goto_2c
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v96, Lcom/android/server/DockObserver;

    move-object/from16 v0, v96

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .end local v95           #dock:Lcom/android/server/DockObserver;
    .local v96, dock:Lcom/android/server/DockObserver;
    move-object/from16 v95, v96

    .line 780
    .end local v96           #dock:Lcom/android/server/DockObserver;
    .restart local v95       #dock:Lcom/android/server/DockObserver;
    :goto_2d
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .line 789
    :goto_2e
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v153, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v153

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_25

    .line 792
    .end local v152           #usb:Lcom/android/server/usb/UsbService;
    .local v153, usb:Lcom/android/server/usb/UsbService;
    :try_start_44
    const-string v7, "usb"

    move-object/from16 v0, v153

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.usb.service"

    new-instance v9, Lcom/miui/server/MiuiUsbService;

    invoke-direct {v9, v5}, Lcom/miui/server/MiuiUsbService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_46

    move-object/from16 v152, v153

    .line 798
    .end local v153           #usb:Lcom/android/server/usb/UsbService;
    .restart local v152       #usb:Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v133, Lcom/android/server/SerialService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_26

    .line 801
    .end local v132           #serial:Lcom/android/server/SerialService;
    .local v133, serial:Lcom/android/server/SerialService;
    :try_start_46
    const-string v7, "serial"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_45

    move-object/from16 v132, v133

    .line 807
    .end local v133           #serial:Lcom/android/server/SerialService;
    .restart local v132       #serial:Lcom/android/server/SerialService;
    :goto_30
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v148, Lcom/android/server/TwilightService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_27

    .end local v147           #twilight:Lcom/android/server/TwilightService;
    .local v148, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v147, v148

    .line 814
    .end local v148           #twilight:Lcom/android/server/TwilightService;
    .restart local v147       #twilight:Lcom/android/server/TwilightService;
    :goto_31
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    new-instance v151, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v151

    move-object/from16 v1, v147

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .end local v150           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v151, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v150, v151

    .line 822
    .end local v151           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v150       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_32
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .line 830
    :goto_33
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v72, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .line 832
    .end local v71           #appWidget:Lcom/android/server/AppWidgetService;
    .local v72, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4b
    const-string v7, "appwidget"

    move-object/from16 v0, v72

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_44

    move-object/from16 v71, v72

    .line 838
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v71       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_34
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v131, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2b

    .end local v130           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v131, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v130, v131

    .line 848
    .end local v131           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v130       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_35
    const/16 v68, 0x0

    .line 850
    .local v68, agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :try_start_4d
    const-class v7, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-object/from16 v68, v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 855
    :goto_36
    :try_start_4e
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "agpsMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    if-eqz v68, :cond_b

    .line 857
    const-string v7, "mtk-agps"

    invoke-interface/range {v68 .. v68}, Lcom/mediatek/common/agps/IMtkAgpsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2d

    .line 866
    :cond_b
    :goto_37
    const/16 v100, 0x0

    .line 868
    .local v100, epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :try_start_4f
    const-class v7, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    move-object/from16 v100, v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2f

    .line 872
    :goto_38
    :try_start_50
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "epoMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v100

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    if-eqz v100, :cond_c

    .line 874
    const-string v7, "mtk-epo-client"

    invoke-interface/range {v100 .. v100}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .line 883
    :cond_c
    :goto_39
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_30

    .line 894
    :goto_3a
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 902
    :goto_3b
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "HDMI Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-class v7, Lcom/mediatek/common/hdmi/IHDMIObserver;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/hdmi/IHDMIObserver;

    move-object/from16 v64, v0
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_32

    .line 911
    :goto_3c
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v123, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    .end local v122           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v123, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v122, v123

    .line 918
    .end local v123           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v122       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3d
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    new-instance v84, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v84

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .line 920
    .end local v83           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v84, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_56
    const-string v7, "commontime_management"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_43

    move-object/from16 v83, v84

    .line 926
    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v83       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3e
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_35

    .line 932
    :goto_3f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110040

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 935
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    new-instance v98, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v98

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    .line 938
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v98, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_59
    const-string v7, "dreams"

    move-object/from16 v0, v98

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_42

    move-object/from16 v97, v98

    .line 958
    .end local v68           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v73           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v98           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v100           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_d
    :goto_40
    invoke-virtual/range {v163 .. v163}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 959
    .local v47, safeMode:Z
    if-eqz v47, :cond_1e

    .line 960
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 962
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 964
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 973
    :goto_41
    :try_start_5a
    invoke-virtual/range {v154 .. v154}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_37

    .line 979
    :goto_42
    :try_start_5b
    invoke-virtual/range {v114 .. v114}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_38

    .line 984
    :goto_43
    if-eqz v92, :cond_e

    .line 986
    :try_start_5c
    invoke-virtual/range {v92 .. v92}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_39

    .line 992
    :cond_e
    :goto_44
    if-eqz v124, :cond_f

    .line 994
    :try_start_5d
    invoke-virtual/range {v124 .. v124}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3a

    .line 1001
    :cond_f
    :goto_45
    :try_start_5e
    invoke-virtual/range {v163 .. v163}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3b

    .line 1006
    :goto_46
    if-eqz v47, :cond_10

    .line 1007
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1013
    :cond_10
    invoke-virtual/range {v163 .. v163}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v85

    .line 1014
    .local v85, config:Landroid/content/res/Configuration;
    new-instance v117, Landroid/util/DisplayMetrics;

    invoke-direct/range {v117 .. v117}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1015
    .local v117, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v156

    check-cast v156, Landroid/view/WindowManager;

    .line 1016
    .local v156, w:Landroid/view/WindowManager;
    invoke-interface/range {v156 .. v156}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v117

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1017
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v85

    move-object/from16 v1, v117

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1020
    :try_start_5f
    move-object/from16 v0, v147

    move-object/from16 v1, v97

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3c

    .line 1026
    :goto_47
    :try_start_60
    invoke-interface/range {v126 .. v126}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3d

    .line 1032
    :goto_48
    :try_start_61
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3e

    .line 1038
    :goto_49
    move-object/from16 v34, v5

    .line 1039
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v118

    .line 1040
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1041
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1042
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1043
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1044
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v86

    .line 1045
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v95

    .line 1046
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v152

    .line 1047
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v53, v143

    .line 1048
    .local v53, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v43, v147

    .line 1049
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v150

    .line 1050
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v71

    .line 1051
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v157

    .line 1052
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v106

    .line 1053
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v130

    .line 1054
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v112

    .line 1055
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v89

    .line 1056
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v122

    .line 1057
    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v83

    .line 1058
    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v145

    .line 1059
    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v136

    .line 1060
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v97

    .line 1061
    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v19

    .line 1062
    .local v58, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v138

    .line 1064
    .local v59, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v140

    .line 1066
    .local v60, telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v142

    .line 1073
    .local v61, thermalF:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v61}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1215
    :try_start_62
    const-string v7, "DMAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v75

    .line 1216
    .local v75, binder:Landroid/os/IBinder;
    if-eqz v75, :cond_21

    .line 1217
    invoke-static/range {v75 .. v75}, Lcom/mediatek/common/dm/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v67

    .line 1218
    .local v67, agent:Lcom/mediatek/common/dm/DMAgent;
    invoke-interface/range {v67 .. v67}, Lcom/mediatek/common/dm/DMAgent;->isLockFlagSet()Z

    move-result v116

    .line 1219
    .local v116, locked:Z
    if-eqz v136, :cond_20

    if-eqz v124, :cond_20

    if-eqz v15, :cond_20

    .line 1220
    new-instance v104, Lcom/android/server/FrameworkDmService;

    move-object/from16 v0, v104

    move-object/from16 v1, v136

    move-object/from16 v2, v124

    invoke-direct {v0, v5, v15, v1, v2}, Lcom/android/server/FrameworkDmService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/NotificationManagerService;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_3f

    .line 1221
    .end local v103           #fdm:Lcom/android/server/FrameworkDmService;
    .local v104, fdm:Lcom/android/server/FrameworkDmService;
    :try_start_63
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dm state lock is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v116

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    if-nez v116, :cond_1f

    const/4 v7, 0x1

    :goto_4a
    move-object/from16 v0, v104

    invoke-virtual {v0, v7}, Lcom/android/server/FrameworkDmService;->dmEnable(Z)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_41

    move-object/from16 v103, v104

    .line 1234
    .end local v67           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v75           #binder:Landroid/os/IBinder;
    .end local v104           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v116           #locked:Z
    .restart local v103       #fdm:Lcom/android/server/FrameworkDmService;
    :goto_4b
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1235
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_11
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1241
    invoke-static {}, Lcom/android/server/ServerHangDetectThread;->getInstance()Lcom/android/server/ServerHangDetectThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/ServerHangDetectThread;->start()V

    .line 1243
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1244
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return-void

    .line 165
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v61           #thermalF:Ljava/lang/Object;
    .end local v62           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v64           #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .end local v65           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v71           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v76           #bluetooth:Landroid/server/BluetoothService;
    .end local v78           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v81           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v83           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v85           #config:Landroid/content/res/Configuration;
    .end local v86           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v88           #contentService:Landroid/content/ContentService;
    .end local v89           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v92           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v95           #dock:Lcom/android/server/DockObserver;
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v101           #factoryTest:I
    .end local v102           #factoryTestStr:Ljava/lang/String;
    .end local v103           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v106           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v117           #metrics:Landroid/util/DisplayMetrics;
    .end local v118           #mountService:Lcom/android/server/MountService;
    .end local v122           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v124           #notification:Lcom/android/server/NotificationManagerService;
    .end local v126           #pm:Landroid/content/pm/IPackageManager;
    .end local v130           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v132           #serial:Lcom/android/server/SerialService;
    .end local v134           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v142           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v143           #throttle:Lcom/android/server/ThrottleService;
    .end local v145           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v147           #twilight:Lcom/android/server/TwilightService;
    .end local v149           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v150           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v152           #usb:Lcom/android/server/usb/UsbService;
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .end local v156           #w:Landroid/view/WindowManager;
    .end local v157           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v159           #wifi:Lcom/android/server/WifiService;
    .end local v161           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v163           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v164           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_12
    const/16 v129, 0x0

    goto/16 :goto_0

    .line 171
    .restart local v129       #reboot:Z
    :cond_13
    const/16 v128, 0x0

    .restart local v128       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 179
    .end local v128           #reason:Ljava/lang/String;
    .end local v129           #reboot:Z
    .restart local v102       #factoryTestStr:Ljava/lang/String;
    :cond_14
    invoke-static/range {v102 .. v102}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v101

    goto/16 :goto_2

    .line 321
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v62       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v64       #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .restart local v65       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v76       #bluetooth:Landroid/server/BluetoothService;
    .restart local v78       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v81       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v83       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v86       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v88       #contentService:Landroid/content/ContentService;
    .restart local v91       #cryptState:Ljava/lang/String;
    .restart local v95       #dock:Lcom/android/server/DockObserver;
    .restart local v101       #factoryTest:I
    .restart local v103       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v118       #mountService:Lcom/android/server/MountService;
    .restart local v120       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v122       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v126       #pm:Landroid/content/pm/IPackageManager;
    .restart local v130       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v132       #serial:Lcom/android/server/SerialService;
    .restart local v134       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #throttle:Lcom/android/server/ThrottleService;
    .restart local v147       #twilight:Lcom/android/server/TwilightService;
    .restart local v149       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v150       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v152       #usb:Lcom/android/server/usb/UsbService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    .restart local v159       #wifi:Lcom/android/server/WifiService;
    .restart local v161       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v163       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v164       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_15
    :try_start_64
    const-string v7, "1"

    move-object/from16 v0, v91

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 322
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 326
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 349
    .restart local v105       #firstBoot:Z
    :catch_0
    move-exception v99

    .line 350
    .local v99, e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_64} :catch_1

    goto/16 :goto_6

    .line 452
    .end local v91           #cryptState:Ljava/lang/String;
    .end local v99           #e:Ljava/lang/Throwable;
    .end local v105           #firstBoot:Z
    :catch_1
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v109, v110

    .line 453
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .local v99, e:Ljava/lang/RuntimeException;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    :goto_4d
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 354
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v99           #e:Ljava/lang/RuntimeException;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v91       #cryptState:Ljava/lang/String;
    .restart local v105       #firstBoot:Z
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 388
    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #battery:Lcom/android/server/BatteryService;
    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #lights:Lcom/android/server/LightsService;
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_19
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 408
    :cond_1a
    const/4 v7, 0x1

    move/from16 v0, v101

    if-ne v0, v7, :cond_1b

    .line 409
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 452
    :catch_2
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v154, v155

    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto :goto_4d

    .line 417
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    :cond_1b
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v77, Landroid/server/BluetoothService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_65} :catch_2

    .line 419
    .end local v76           #bluetooth:Landroid/server/BluetoothService;
    .local v77, bluetooth:Landroid/server/BluetoothService;
    :try_start_66
    const-string v7, "bluetooth"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 420
    invoke-virtual/range {v77 .. v77}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 422
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 423
    new-instance v79, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v79

    move-object/from16 v1, v77

    invoke-direct {v0, v5, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_66} :catch_62

    .line 424
    .end local v78           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v79, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_67
    const-string v7, "bluetooth_a2dp"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 426
    invoke-virtual/range {v77 .. v77}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_67} :catch_63

    move-object/from16 v78, v79

    .line 430
    .end local v79           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v78       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_1c
    :try_start_68
    new-instance v82, Landroid/server/BluetoothSocketService;

    move-object/from16 v0, v82

    move-object/from16 v1, v77

    invoke-direct {v0, v5, v1}, Landroid/server/BluetoothSocketService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_62

    .line 431
    .end local v81           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .local v82, bluetoothSocket:Landroid/server/BluetoothSocketService;
    :try_start_69
    const-string v7, "bluetooth_socket"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 436
    new-instance v63, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v5}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_64

    .line 437
    .end local v62           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .local v63, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    :try_start_6a
    const-string v7, "bluetooth_profile_manager"

    move-object/from16 v0, v63

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v69

    .line 444
    .local v69, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v11, 0x0

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v80

    .line 446
    .local v80, bluetoothOn:I
    if-nez v69, :cond_1d

    if-eqz v80, :cond_1d

    .line 447
    invoke-virtual/range {v77 .. v77}, Landroid/server/BluetoothService;->enable()Z
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_65

    :cond_1d
    move-object/from16 v62, v63

    .end local v63           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v62       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v81, v82

    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v81       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v76, v77

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .restart local v76       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 476
    .end local v69           #airplaneModeOn:I
    .end local v80           #bluetoothOn:I
    .end local v91           #cryptState:Ljava/lang/String;
    .end local v105           #firstBoot:Z
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v71       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v89       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v92       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v106       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v124       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v145       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    .restart local v157       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v99

    .line 477
    .local v99, e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 484
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v99

    .line 485
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 491
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v99

    .line 492
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 497
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v99

    .line 498
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 519
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v99

    .line 520
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 528
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v99

    .line 529
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 536
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v99

    .line 537
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 544
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v99

    .line 545
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 552
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v99

    .line 553
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 560
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v99

    .line 561
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 568
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v99

    .line 569
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 576
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v99

    .line 577
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 586
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v99

    move-object/from16 v25, v120

    .line 587
    .end local v120           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 594
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v99

    .line 595
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 602
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v99

    .line 603
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 615
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v99

    .line 616
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 624
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v99

    .line 625
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 633
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v99

    .line 634
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 641
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v99

    .line 642
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 657
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v99

    .line 658
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 664
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v99

    .line 665
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 673
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v99

    .line 674
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 681
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v99

    .line 682
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 689
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v99

    .line 690
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 697
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v99

    .line 698
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 705
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v99

    .line 706
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 714
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v99

    .line 715
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 723
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v99

    .line 724
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 735
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v99

    .line 736
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 744
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v99

    .line 745
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 757
    .end local v99           #e:Ljava/lang/Throwable;
    .restart local v73       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_21
    move-exception v99

    .line 758
    .local v99, e:Ljava/lang/Exception;
    :try_start_6b
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v99 .. v99}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_22

    goto/16 :goto_2b

    .line 765
    .end local v99           #e:Ljava/lang/Exception;
    :catch_22
    move-exception v99

    .line 766
    .local v99, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 775
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v99

    .line 776
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 784
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v99

    .line 785
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 793
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v99

    .line 794
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 802
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v99

    .line 803
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 809
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v99

    .line 810
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 817
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v99

    .line 818
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 825
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v99

    .line 826
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 833
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v99

    .line 834
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 840
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v99

    .line 841
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 852
    .end local v99           #e:Ljava/lang/Throwable;
    .restart local v68       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :catch_2c
    move-exception v99

    .line 853
    .local v99, e:Ljava/lang/Exception;
    :try_start_6c
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v99 .. v99}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_2d

    goto/16 :goto_36

    .line 860
    .end local v99           #e:Ljava/lang/Exception;
    :catch_2d
    move-exception v99

    .line 861
    .local v99, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "hugo_app Failure starting Mtk Agps Manager"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 869
    .end local v99           #e:Ljava/lang/Throwable;
    .restart local v100       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :catch_2e
    move-exception v99

    .line 870
    .local v99, e:Ljava/lang/Exception;
    :try_start_6d
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v99 .. v99}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_2f

    goto/16 :goto_38

    .line 877
    .end local v99           #e:Ljava/lang/Exception;
    :catch_2f
    move-exception v99

    .line 878
    .local v99, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Mtk EPO client manager"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .line 885
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v99

    .line 886
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 897
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v99

    .line 898
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 905
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v99

    .line 906
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HDMIObserver"

    move-object/from16 v0, v99

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 913
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v99

    .line 914
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 921
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v99

    .line 922
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 928
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v99

    .line 929
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 939
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v99

    .line 940
    .restart local v99       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 967
    .end local v68           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v73           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v99           #e:Ljava/lang/Throwable;
    .end local v100           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v47       #safeMode:Z
    :cond_1e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_41

    .line 974
    :catch_37
    move-exception v99

    .line 975
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 980
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v99

    .line 981
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 987
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v99

    .line 988
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 995
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v99

    .line 996
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1002
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v99

    .line 1003
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1021
    .end local v99           #e:Ljava/lang/Throwable;
    .restart local v85       #config:Landroid/content/res/Configuration;
    .restart local v117       #metrics:Landroid/util/DisplayMetrics;
    .restart local v156       #w:Landroid/view/WindowManager;
    :catch_3c
    move-exception v99

    .line 1022
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1027
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v99

    .line 1028
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1033
    .end local v99           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v99

    .line 1034
    .restart local v99       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1222
    .end local v99           #e:Ljava/lang/Throwable;
    .end local v103           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v34       #contextF:Landroid/content/Context;
    .restart local v35       #mountServiceF:Lcom/android/server/MountService;
    .restart local v36       #batteryF:Lcom/android/server/BatteryService;
    .restart local v37       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v38       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v39       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v41       #dockF:Lcom/android/server/DockObserver;
    .restart local v42       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v43       #twilightF:Lcom/android/server/TwilightService;
    .restart local v44       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v45       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v46       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v48       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v49       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v50       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v51       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v52       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v53       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v54       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v57       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v58       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v59       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #thermalF:Ljava/lang/Object;
    .restart local v67       #agent:Lcom/mediatek/common/dm/DMAgent;
    .restart local v75       #binder:Landroid/os/IBinder;
    .restart local v104       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v116       #locked:Z
    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_4a

    .line 1224
    .end local v104           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v103       #fdm:Lcom/android/server/FrameworkDmService;
    :cond_20
    :try_start_6e
    const-string v7, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_3f

    goto/16 :goto_4b

    .line 1229
    .end local v67           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v75           #binder:Landroid/os/IBinder;
    .end local v116           #locked:Z
    :catch_3f
    move-exception v99

    .line 1230
    .local v99, e:Ljava/lang/Exception;
    :goto_63
    const-string v7, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 1227
    .end local v99           #e:Ljava/lang/Exception;
    .restart local v75       #binder:Landroid/os/IBinder;
    :cond_21
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "dm binder is null!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_3f

    goto/16 :goto_4b

    .line 332
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v61           #thermalF:Ljava/lang/Object;
    .end local v71           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v75           #binder:Landroid/os/IBinder;
    .end local v85           #config:Landroid/content/res/Configuration;
    .end local v89           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v92           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v106           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v117           #metrics:Landroid/util/DisplayMetrics;
    .end local v124           #notification:Lcom/android/server/NotificationManagerService;
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v142           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v145           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v156           #w:Landroid/view/WindowManager;
    .end local v157           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v91       #cryptState:Ljava/lang/String;
    .restart local v105       #firstBoot:Z
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v120       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_40
    move-exception v7

    goto/16 :goto_5

    .line 1229
    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #battery:Lcom/android/server/BatteryService;
    .end local v91           #cryptState:Ljava/lang/String;
    .end local v103           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v105           #firstBoot:Z
    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v111           #lights:Lcom/android/server/LightsService;
    .end local v120           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v34       #contextF:Landroid/content/Context;
    .restart local v35       #mountServiceF:Lcom/android/server/MountService;
    .restart local v36       #batteryF:Lcom/android/server/BatteryService;
    .restart local v37       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v38       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v39       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v41       #dockF:Lcom/android/server/DockObserver;
    .restart local v42       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v43       #twilightF:Lcom/android/server/TwilightService;
    .restart local v44       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v45       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v46       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v47       #safeMode:Z
    .restart local v48       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v49       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v50       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v51       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v52       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v53       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v54       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v57       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v58       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v59       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #thermalF:Ljava/lang/Object;
    .restart local v67       #agent:Lcom/mediatek/common/dm/DMAgent;
    .restart local v71       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v75       #binder:Landroid/os/IBinder;
    .restart local v85       #config:Landroid/content/res/Configuration;
    .restart local v89       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v92       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v104       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v106       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v116       #locked:Z
    .restart local v117       #metrics:Landroid/util/DisplayMetrics;
    .restart local v124       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v145       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v156       #w:Landroid/view/WindowManager;
    .restart local v157       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_41
    move-exception v99

    move-object/from16 v103, v104

    .end local v104           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v103       #fdm:Lcom/android/server/FrameworkDmService;
    goto :goto_63

    .line 939
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v61           #thermalF:Ljava/lang/Object;
    .end local v67           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v75           #binder:Landroid/os/IBinder;
    .end local v85           #config:Landroid/content/res/Configuration;
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v116           #locked:Z
    .end local v117           #metrics:Landroid/util/DisplayMetrics;
    .end local v156           #w:Landroid/view/WindowManager;
    .restart local v68       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .restart local v73       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .restart local v98       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v100       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :catch_42
    move-exception v99

    move-object/from16 v97, v98

    .end local v98           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_62

    .line 921
    .end local v83           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v84       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_43
    move-exception v99

    move-object/from16 v83, v84

    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v83       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_61

    .line 833
    .end local v68           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v71           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v100           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_44
    move-exception v99

    move-object/from16 v71, v72

    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v71       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_60

    .line 802
    .end local v132           #serial:Lcom/android/server/SerialService;
    .restart local v133       #serial:Lcom/android/server/SerialService;
    :catch_45
    move-exception v99

    move-object/from16 v132, v133

    .end local v133           #serial:Lcom/android/server/SerialService;
    .restart local v132       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5f

    .line 793
    .end local v152           #usb:Lcom/android/server/usb/UsbService;
    .restart local v153       #usb:Lcom/android/server/usb/UsbService;
    :catch_46
    move-exception v99

    move-object/from16 v152, v153

    .end local v153           #usb:Lcom/android/server/usb/UsbService;
    .restart local v152       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5e

    .line 735
    .end local v73           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v157           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v158       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_47
    move-exception v99

    move-object/from16 v157, v158

    .end local v158           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v157       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5d

    .line 697
    .end local v89           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_48
    move-exception v99

    move-object/from16 v89, v90

    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v89       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5c

    .line 689
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .restart local v113       #location:Lcom/android/server/LocationManagerService;
    :catch_49
    move-exception v99

    move-object/from16 v112, v113

    .end local v113           #location:Lcom/android/server/LocationManagerService;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5b

    .line 673
    .end local v124           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v125       #notification:Lcom/android/server/NotificationManagerService;
    :catch_4a
    move-exception v99

    move-object/from16 v124, v125

    .end local v125           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v124       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5a

    .line 633
    .end local v143           #throttle:Lcom/android/server/ThrottleService;
    .restart local v144       #throttle:Lcom/android/server/ThrottleService;
    :catch_4b
    move-exception v99

    move-object/from16 v143, v144

    .end local v144           #throttle:Lcom/android/server/ThrottleService;
    .restart local v143       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_59

    .line 615
    .end local v86           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v87       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4c
    move-exception v99

    move-object/from16 v86, v87

    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v86       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_58

    .line 602
    .end local v159           #wifi:Lcom/android/server/WifiService;
    .restart local v160       #wifi:Lcom/android/server/WifiService;
    :catch_4d
    move-exception v99

    move-object/from16 v159, v160

    .end local v160           #wifi:Lcom/android/server/WifiService;
    .restart local v159       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_57

    .line 594
    .end local v161           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v162       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4e
    move-exception v99

    move-object/from16 v161, v162

    .end local v162           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v161       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_56

    .line 586
    :catch_4f
    move-exception v99

    goto/16 :goto_55

    .line 576
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v120       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v121       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_50
    move-exception v99

    move-object/from16 v29, v121

    .end local v121           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_54

    .line 568
    .end local v145           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v146       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_51
    move-exception v99

    move-object/from16 v145, v146

    .end local v146           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v145       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_53

    .line 544
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v137       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_52
    move-exception v99

    move-object/from16 v136, v137

    .end local v137           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_52

    .line 536
    .end local v92           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v93       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_53
    move-exception v99

    move-object/from16 v92, v93

    .end local v93           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v92       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_51

    .line 528
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v115       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_54
    move-exception v99

    move-object/from16 v114, v115

    .end local v115           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_50

    .line 519
    .end local v118           #mountService:Lcom/android/server/MountService;
    .restart local v119       #mountService:Lcom/android/server/MountService;
    :catch_55
    move-exception v99

    move-object/from16 v118, v119

    .end local v119           #mountService:Lcom/android/server/MountService;
    .restart local v118       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4f

    .line 506
    :catch_56
    move-exception v7

    goto/16 :goto_10

    .line 476
    .end local v106           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v107       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_57
    move-exception v99

    move-object/from16 v106, v107

    .end local v107           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v106       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4e

    .line 452
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v71           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v89           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v92           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v97           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v106           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v112           #location:Lcom/android/server/LocationManagerService;
    .end local v114           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v124           #notification:Lcom/android/server/NotificationManagerService;
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v142           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v145           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v157           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v127       #power:Lcom/android/server/power/PowerManagerService;
    :catch_58
    move-exception v99

    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v94

    .end local v94           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v127

    .end local v127           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4d

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v127       #power:Lcom/android/server/power/PowerManagerService;
    :catch_59
    move-exception v99

    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v94

    .end local v94           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v127

    .end local v127           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v94       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    :catch_5a
    move-exception v99

    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v94

    .end local v94           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    :catch_5b
    move-exception v99

    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5c
    move-exception v99

    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v65           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v66       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v91       #cryptState:Ljava/lang/String;
    .restart local v105       #firstBoot:Z
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_5d
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v65, v66

    .end local v66           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v65       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_5f
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    :catch_60
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v70

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v154, v155

    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    :catch_61
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v108

    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v154, v155

    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v76           #bluetooth:Landroid/server/BluetoothService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    :catch_62
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v76, v77

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .restart local v76       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v154, v155

    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v76           #bluetooth:Landroid/server/BluetoothService;
    .end local v78           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    .restart local v79       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    :catch_63
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v78, v79

    .end local v79           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v78       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v76, v77

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .restart local v76       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v154, v155

    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v76           #bluetooth:Landroid/server/BluetoothService;
    .end local v81           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    :catch_64
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v81, v82

    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v81       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v76, v77

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .restart local v76       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v154, v155

    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v62           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v76           #bluetooth:Landroid/server/BluetoothService;
    .end local v81           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v154           #vibrator:Lcom/android/server/VibratorService;
    .restart local v63       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    :catch_65
    move-exception v99

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v138, v139

    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v63

    .end local v63           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v62       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v81, v82

    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v81       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v76, v77

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .restart local v76       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v154, v155

    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v154       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v109, v110

    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .line 349
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v65           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v109           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v66       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v70       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v108       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v111       #lights:Lcom/android/server/LightsService;
    .restart local v139       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_66
    move-exception v99

    move-object/from16 v65, v66

    .end local v66           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v65       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4c

    .end local v70           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #battery:Lcom/android/server/BatteryService;
    .end local v91           #cryptState:Ljava/lang/String;
    .end local v105           #firstBoot:Z
    .end local v108           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v111           #lights:Lcom/android/server/LightsService;
    .end local v139           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v141           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v71       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v89       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v92       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v97       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v106       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v109       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #location:Lcom/android/server/LocationManagerService;
    .restart local v114       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v124       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v145       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v157       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_22
    move-object/from16 v25, v120

    .end local v120           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_40
.end method
