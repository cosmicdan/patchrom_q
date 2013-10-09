.class public Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$3;,
        Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$GetPowerSavingStatusTask;,
        Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$PowerSavingTASK;
    }
.end annotation


# static fields
.field private static final ACTION_BATTERY_PERCENTAGE_SWITCH:Ljava/lang/String; = "mediatek.intent.action.BATTERY_PERCENTAGE_SWITCH"

.field private static final CAT_POWER_SAVING_STATUS_COMMAND:Ljava/lang/String; = "cat /data/.tp.settings"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_PERFORMANCE_MODE:I = 0x0

.field private static final DISABLE_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.off.conf"

.field private static final ENABLE_POWER_SAVING_COMMAND:Ljava/lang/String; = "/system/bin/thermal_manager /etc/.tp/thermal.conf"

.field private static final H_CHECK_POWER_SAVING_MESSAGE:I = 0x2

.field private static final H_UNCHECK_POWER_SAVING_MESSAGE:I = 0x3

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_CPU_DTM:Ljava/lang/String; = "cpu_dtm"

.field private static final KEY_PERFORMANCE_MODE:Ljava/lang/String; = "performance_mode"

.field private static final KEY_POWER_SAVING_SETTINGS:Ljava/lang/String; = "power_saving_setting"

.field private static final KEY_POWER_SAVING_SWITCH:Ljava/lang/String; = "power_saving"

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_HELP:I = 0x3

.field private static final MENU_STATS_REFRESH:I = 0x2

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_POWER_THRESHOLD:I = 0x5

.field static final MSG_UPDATE_NAME_ICON:I = 0x1

.field public static final PERFORMANCE_MODE_SERVICE:Ljava/lang/String; = "gov-ondemand"

.field public static final PERFORMANCE_MODE_THERMAL_SERVICE:Ljava/lang/String; = "tm-ondemand"

.field public static final POWER_SAVEING_MODE_SERVICE:Ljava/lang/String; = "gov-smartass"

.field public static final POWER_SAVEING_MODE_THERMAL_SERVICE:Ljava/lang/String; = "tm-smartass"

.field public static final POWER_SAVING_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerUsageSummary"

.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private batterrPercentPrf:Landroid/preference/CheckBoxPreference;

.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingsstock/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPowerSavingSettings:Landroid/preference/Preference;

.field private mPowerSavingSwitch:Landroid/preference/CheckBoxPreference;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mUm:Landroid/os/UserManager;

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingsstock/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingsstock/fuelgauge/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingsstock/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private performanceModeSummaries:[Ljava/lang/String;

.field private powerIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 12

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v10, v0, v5

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v9

    int-to-double v0, v9

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v0, v5

    add-double/2addr v10, v0

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b076d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02007b

    iget-wide v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double/2addr v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settingsstock/fuelgauge/BatterySipper;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settingsstock/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settingsstock/fuelgauge/BatterySipper;
    .locals 9

    iget-wide v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    :cond_0
    iget-wide v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mTotalPower:D

    new-instance v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settingsstock/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    iput-wide p3, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->usageTime:J

    iput p5, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->iconId:I

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0770

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020087

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settingsstock/fuelgauge/BatterySipper;

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0755

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b076f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02008e

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settingsstock/fuelgauge/BatterySipper;

    return-void
.end method

.method private addRadioUsage(J)V
    .locals 19

    const-wide/16 v8, 0x0

    const/4 v10, 0x6

    const-wide/16 v5, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v12, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v15, v2, v17

    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v4, v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    add-long/2addr v5, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v13, v2, v17

    const-wide/16 v2, 0x3e8

    div-long v2, v13, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b076e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f02007d

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settingsstock/fuelgauge/BatterySipper;

    move-result-object v11

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v2, v2, v17

    long-to-double v2, v2

    const-wide/high16 v17, 0x4059

    mul-double v2, v2, v17

    long-to-double v0, v5

    move-wide/from16 v17, v0

    div-double v2, v2, v17

    iput-wide v2, v11, Lcom/android/settingsstock/fuelgauge/BatterySipper;->noCoveragePercent:D

    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 19

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v5, v2, v17

    long-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    const/4 v12, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    int-to-float v2, v12

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v15

    const-wide/high16 v17, 0x4014

    div-double v13, v2, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v10, v2, v17

    long-to-double v2, v10

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    const-wide v2, 0x408f400000000000L

    div-double/2addr v8, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b076b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020081

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settingsstock/fuelgauge/BatterySipper;

    return-void
.end method

.method private addUserUsage()V
    .locals 14

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v11, v2}, Lcom/android/settingsstock/users/UserUtils;->getUserIcon(Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v11, :cond_1

    iget-object v1, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_1
    if-nez v1, :cond_0

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b06a7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sget-object v2, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->USER:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settingsstock/fuelgauge/BatterySipper;

    move-result-object v8

    iput-object v10, v8, Lcom/android/settingsstock/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    const-string v0, "User"

    invoke-direct {p0, v8, v12, v0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settingsstock/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b06a8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v11, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_0

    const-wide/16 v5, 0x0

    :cond_0
    const-wide/16 v2, 0x0

    mul-long/2addr v2, v11

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v2, v7

    long-to-double v7, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v4, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v7, v15

    add-double/2addr v2, v7

    const-wide v7, 0x408f400000000000L

    div-double v13, v2, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b076c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f02008f

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double/2addr v8, v13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settingsstock/fuelgauge/BatterySipper;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    const-string v3, "WIFI"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settingsstock/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private aggregateSippers(Lcom/android/settingsstock/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingsstock/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingsstock/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/fuelgauge/BatterySipper;

    iget-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 26

    const-wide/32 v6, 0xf4240

    const-wide/32 v2, 0x30d40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "wifi.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "radio.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v24

    add-long v14, v22, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v24

    add-long v22, v22, v24

    sub-long v20, v22, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v10, v22, v16

    :goto_0
    const-wide/16 v22, 0x8

    div-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v4, v22

    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    long-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    add-double v22, v22, v24

    add-long v24, v14, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    :goto_1
    return-wide v22

    :cond_0
    const-wide/32 v10, 0x30d40

    goto :goto_0

    :cond_1
    const-wide/16 v22, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "PowerUsageSummary"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private processAppUsage()V
    .locals 88

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v82, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v56

    move/from16 v0, v56

    new-array v0, v0, [D

    move-object/from16 v41, v0

    move/from16 v0, v56

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/16 v37, 0x0

    :goto_0
    move/from16 v0, v37

    move/from16 v1, v56

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v41, v37

    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v68

    const-wide/16 v14, 0x0

    const/16 v36, 0x0

    move-wide/from16 v0, v68

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/16 v32, 0x0

    :goto_1
    move/from16 v0, v32

    if-ge v0, v13, :cond_19

    move-object/from16 v0, v70

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    const-wide/16 v39, 0x0

    const-wide/16 v28, 0x0

    const/4 v8, 0x0

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v44

    const-wide/16 v21, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v26, 0x0

    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_1
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v73

    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v58

    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v24

    const-wide/16 v5, 0xa

    mul-long v5, v5, v24

    add-long v18, v18, v5

    add-long v5, v73, v58

    const-wide/16 v9, 0xa

    mul-long v65, v5, v9

    const/16 v67, 0x0

    const/16 v57, 0x0

    :goto_3
    move/from16 v0, v57

    move/from16 v1, v56

    if-ge v0, v1, :cond_2

    move-object/from16 v0, v45

    move/from16 v1, v57

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v20, v57

    move/from16 v0, v67

    int-to-long v5, v0

    aget-wide v9, v20, v57

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v67, v0

    add-int/lit8 v57, v57, 0x1

    goto :goto_3

    :cond_2
    if-nez v67, :cond_3

    const/16 v67, 0x1

    :cond_3
    const-wide/16 v42, 0x0

    const/16 v57, 0x0

    :goto_4
    move/from16 v0, v57

    move/from16 v1, v56

    if-ge v0, v1, :cond_4

    aget-wide v5, v20, v57

    long-to-double v5, v5

    move/from16 v0, v67

    int-to-double v9, v0

    div-double v46, v5, v9

    move-wide/from16 v0, v65

    long-to-double v5, v0

    mul-double v5, v5, v46

    aget-wide v9, v41, v57

    mul-double/2addr v5, v9

    add-double v42, v42, v5

    add-int/lit8 v57, v57, 0x1

    goto :goto_4

    :cond_4
    add-long v21, v21, v65

    add-double v39, v39, v42

    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move-wide/from16 v28, v42

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    cmpg-double v5, v28, v42

    if-gez v5, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-wide/from16 v28, v42

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    cmp-long v5, v18, v21

    if-lez v5, :cond_8

    move-wide/from16 v21, v18

    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v39, v39, v5

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v79

    invoke-interface/range {v79 .. v79}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_9
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/util/Map$Entry;

    invoke-interface/range {v78 .. v78}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v64

    if-eqz v64, :cond_9

    move-object/from16 v0, v64

    move-wide/from16 v1, v68

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v80, v80, v5

    goto :goto_5

    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v80, v80, v5

    add-long v14, v14, v80

    move-wide/from16 v0, v80

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    add-double v39, v39, v37

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v60

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v62

    add-long v5, v60, v62

    long-to-double v5, v5

    mul-double v37, v5, v16

    add-double v39, v39, v37

    move-wide/from16 v0, v68

    move/from16 v2, v82

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v83, v5, v9

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    add-long v5, v5, v83

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    move-wide/from16 v0, v83

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    add-double v39, v39, v37

    move-wide/from16 v0, v68

    move/from16 v2, v82

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v85, v5, v9

    move-wide/from16 v0, v85

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.scan"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    add-double v39, v39, v37

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/Map$Entry;

    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v55

    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v64

    move-object/from16 v0, v64

    move-wide/from16 v1, v68

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v53, v5, v9

    const-wide/16 v34, 0x0

    packed-switch v55, :pswitch_data_0

    move-object/from16 v0, v51

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v49

    if-eqz v49, :cond_b

    invoke-virtual/range {v49 .. v49}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v34, v0

    :cond_b
    :goto_7
    move-wide/from16 v0, v53

    long-to-double v5, v0

    mul-double v5, v5, v34

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    add-double v39, v39, v37

    move-wide/from16 v0, v53

    long-to-double v5, v0

    mul-double v5, v5, v34

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v39, v39, v5

    goto :goto_6

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v34

    move-wide/from16 v26, v53

    goto :goto_7

    :cond_c
    const/16 v31, 0x0

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v71

    const-wide/16 v5, 0x0

    cmpl-double v5, v39, v5

    if-nez v5, :cond_d

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    new-instance v4, Lcom/android/settingsstock/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v87, 0x0

    aput-wide v39, v12, v87

    invoke-direct/range {v4 .. v12}, Lcom/android/settingsstock/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    move-wide/from16 v0, v21

    iput-wide v0, v4, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuTime:J

    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/settingsstock/fuelgauge/BatterySipper;->gpsTime:J

    move-wide/from16 v0, v83

    iput-wide v0, v4, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wifiRunningTime:J

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuFgTime:J

    move-wide/from16 v0, v80

    iput-wide v0, v4, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wakeLockTime:J

    move-wide/from16 v0, v60

    iput-wide v0, v4, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesReceived:J

    move-wide/from16 v0, v62

    iput-wide v0, v4, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesSent:J

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v36, v4

    :cond_e
    const-wide/16 v5, 0x0

    cmpl-double v5, v39, v5

    if-eqz v5, :cond_f

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_14

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mWifiPower:D

    :cond_f
    :goto_9
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, v71

    if-eq v0, v5, :cond_13

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_13

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/List;

    if-nez v33, :cond_12

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v71

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_15

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    goto :goto_9

    :cond_15
    if-eqz v31, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/Double;

    if-nez v72, :cond_16

    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v72

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v71

    move-object/from16 v1, v72

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    :cond_16
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v5, v5, v39

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v72

    goto :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v39, v5

    if-lez v5, :cond_18

    move-wide/from16 v0, v39

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    :cond_18
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mTotalPower:D

    goto/16 :goto_9

    :cond_19
    if-eqz v36, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v75, v5, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    add-long/2addr v5, v14

    sub-long v75, v75, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v75, v5

    if-lez v5, :cond_1b

    move-wide/from16 v0, v75

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v39, v5, v9

    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v75

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wakeLockTime:J

    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v39

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v39

    aput-wide v9, v5, v6

    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_1a

    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    :cond_1a
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mTotalPower:D

    :cond_1b
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    iget v6, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    iget-object v7, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    move-wide v0, v2

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addUserUsage()V

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    :cond_0
    return-void
.end method

.method private recordSettings()V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_brightness_mode"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_brightness"

    const/16 v10, 0x14

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "screen_off_timeout"

    const/16 v10, 0x5dc

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "power_saving_record_screen_brightness_mode"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "power_saving_record_screen_brightness"

    invoke-static {v6, v9, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "power_saving_record_screen_off_timeout"

    invoke-static {v6, v9, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "wifi"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "power_saving_record_wifi"

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "power_saving_record_bt"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    const/16 v11, 0xc

    if-ne v6, v11, :cond_1

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "location"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "power_saving_record_gps"

    const-string v6, "gps"

    invoke-virtual {v1, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "power_saving_record_sync"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_3
    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_2

    :cond_3
    move v7, v8

    goto :goto_3
.end method

.method private refreshStats()V
    .locals 14

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->load()V

    :cond_0
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mTotalPower:D

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mWifiPower:D

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->batterrPercentPrf:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->batterrPercentPrf:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0b014b

    invoke-virtual {p0, v11}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->batterrPercentPrf:Landroid/preference/CheckBoxPreference;

    const/4 v11, -0x3

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "battery_percentage"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->batterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->batterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    const/4 v11, -0x2

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v11, -0x4

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSettings:Landroid/preference/Preference;

    const/4 v11, -0x3

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSettings:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v10, v11}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    const/4 v10, -0x1

    invoke-virtual {v1, v10}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v11, "screen.full"

    invoke-virtual {v10, v11}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_2

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->processAppUsage()V

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingsstock/fuelgauge/BatterySipper;

    invoke-virtual {v8}, Lcom/android/settingsstock/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4014

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_3

    invoke-virtual {v8}, Lcom/android/settingsstock/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4059

    mul-double v5, v10, v12

    const-wide/high16 v10, 0x3ff0

    cmpg-double v10, v5, v10

    if-ltz v10, :cond_3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    rsub-int/lit8 v10, v9, 0x64

    double-to-int v11, v5

    sub-int/2addr v10, v11

    if-gtz v10, :cond_4

    rsub-int/lit8 v10, v9, 0x64

    int-to-double v5, v10

    :cond_4
    int-to-double v10, v9

    add-double/2addr v10, v5

    double-to-int v9, v10

    new-instance v7, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/settingsstock/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v7, v10, v11, v8}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settingsstock/fuelgauge/BatterySipper;)V

    invoke-virtual {v8}, Lcom/android/settingsstock/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    iget-wide v12, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v3, v10, v12

    iput-wide v5, v8, Lcom/android/settingsstock/fuelgauge/BatterySipper;->percent:D

    iget-object v10, v8, Lcom/android/settingsstock/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    const v10, 0x7fffffff

    invoke-virtual {v8}, Lcom/android/settingsstock/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v11

    double-to-int v11, v11

    sub-int/2addr v10, v11

    invoke-virtual {v7, v10}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->setOrder(I)V

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    iget-object v10, v8, Lcom/android/settingsstock/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v10, :cond_5

    iget-object v10, v8, Lcom/android/settingsstock/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    :cond_5
    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    const/16 v11, 0xb

    if-le v10, v11, :cond_9

    :cond_6
    :goto_2
    iget-object v11, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v10, :cond_7

    new-instance v10, Ljava/lang/Thread;

    const-string v12, "BatteryUsage Icon Loader"

    invoke-direct {v10, p0, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    :cond_7
    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    :cond_8
    monitor-exit v11

    goto/16 :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_9
    const/16 v10, 0x64

    if-ge v9, v10, :cond_6

    iget-object v10, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    const/16 v11, 0xb

    if-le v10, v11, :cond_3

    goto :goto_2
.end method

.method private restoreSettings()V
    .locals 15

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "power_saving_record_screen_brightness_mode"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "power_saving_record_screen_brightness"

    const/16 v14, 0x14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "power_saving_record_screen_off_timeout"

    const/16 v14, 0x5dc

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "power_saving_record_wifi"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_8

    move v8, v10

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "power_saving_record_bt"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_9

    move v2, v10

    :goto_1
    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "power_saving_record_gps"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a

    move v4, v10

    :goto_2
    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "power_saving_record_sync"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    move v6, v10

    :goto_3
    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness_mode"

    invoke-static {v11, v12, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness"

    invoke-static {v11, v12, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_off_timeout"

    invoke-static {v11, v12, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    if-nez v8, :cond_0

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v11

    const/16 v12, 0xc

    if-ne v11, v12, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "location"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    if-nez v4, :cond_4

    const-string v11, "gps"

    invoke-virtual {v1, v11}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "gps"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_5
    if-nez v6, :cond_6

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    invoke-static {v10}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    :cond_7
    return-void

    :cond_8
    move v8, v11

    goto/16 :goto_0

    :cond_9
    move v2, v11

    goto/16 :goto_1

    :cond_a
    move v4, v11

    goto/16 :goto_2

    :cond_b
    move v6, v11

    goto/16 :goto_3
.end method

.method private switchPerformanceMode(I)V
    .locals 4

    const-string v3, "ctl.start"

    if-nez p1, :cond_0

    const-string v2, "gov-ondemand"

    :goto_0
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "tm-ondemand"

    const-string v1, "tm-smartass"

    :goto_1
    const-string v2, "ctl.stop"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ctl.start"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "gov-smartass"

    goto :goto_0

    :cond_1
    const-string v0, "tm-smartass"

    const-string v1, "tm-ondemand"

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    :cond_0
    const v1, 0x7f050022

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "user"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    const-string v1, "app_list"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v4, "battery_status"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v4, "power_saving"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSwitch:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v4, "power_saving_setting"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSettings:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "power_saving_mode"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settingsstock/fuelgauge/PowerSavingService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->powerIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x2

    const v2, 0x7f0b0796

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02006d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    :goto_1
    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAbort:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->batterrPercentPrf:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1

    const-string v2, "PowerUsageSummary"

    const-string v4, "click battery percentage checkbox"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->batterrPercentPrf:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->batterrPercentPrf:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v16, 0x1

    :goto_0
    const-string v2, "PowerUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "battery_percentage"

    move/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v10, Landroid/content/Intent;

    const-string v2, "mediatek.intent.action.BATTERY_PERCENTAGE_SWITCH"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    move/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "PowerUsageSummary"

    const-string v4, "sendBroadcast battery percentage switch"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_1
    return v2

    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryPreference;

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v8, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    invoke-virtual {v8}, Landroid/os/Parcel;->marshall()[B

    move-result-object v9

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v2, "stats"

    invoke-virtual {v3, v2, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settingsstock/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0b0766

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSwitch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_4

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSettings:Landroid/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v12, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->recordSettings()V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->powerOccerd:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settingsstock/fuelgauge/PowerSavingReceiver;->hasRestore:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->powerIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "power_saving_mode"

    invoke-static {v2, v4, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSettings:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->restoreSettings()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->powerIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mPowerSavingSettings:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_5

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v4, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;

    invoke-virtual {v10, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v11, p2

    check-cast v11, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;

    invoke-virtual {v11}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settingsstock/fuelgauge/BatterySipper;

    move-result-object v15

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    iget-object v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "percent"

    invoke-virtual {v15}, Lcom/android/settingsstock/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "gauge"

    invoke-virtual {v15}, Lcom/android/settingsstock/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "duration"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "iconPackage"

    iget-object v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iconId"

    iget v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "noCoverage"

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v2, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_7

    const-string v2, "uid"

    iget-object v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    const-string v2, "drainType"

    iget-object v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->drainType:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v2, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$3;->$SwitchMap$com$android$settingsstock$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->drainType:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v4}, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    const/4 v2, 0x0

    const v4, 0x7f0b077b

    aput v4, v17, v2

    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/4 v2, 0x0

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    :cond_8
    :goto_3
    const-string v2, "types"

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v2, "values"

    move-object/from16 v0, v19

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    const-class v2, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0b0767

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v18, v0

    const/16 v2, 0x9

    new-array v0, v2, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    const/16 v2, 0x9

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/4 v2, 0x0

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x1

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x2

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x3

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x4

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x5

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x6

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x7

    const-wide/16 v4, 0x0

    aput-wide v4, v19, v2

    const/16 v2, 0x8

    const-wide/16 v4, 0x0

    aput-wide v4, v19, v2

    iget-object v2, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->drainType:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v4, Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settingsstock/fuelgauge/PowerUsageDetail$DrainType;

    if-ne v2, v4, :cond_8

    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    new-instance v13, Ljava/io/PrintWriter;

    invoke-direct {v13, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v4, ""

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v2, v13, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    const-string v2, "report_details"

    invoke-virtual {v14}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    new-instance v13, Ljava/io/PrintWriter;

    invoke-direct {v13, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v2, v13, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    const-string v2, "report_checkin_details"

    invoke-virtual {v14}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    const/4 v2, 0x2

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/4 v2, 0x0

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x1

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v4, v19, v2

    goto/16 :goto_3

    :pswitch_2
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_2

    const/4 v2, 0x6

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/4 v2, 0x0

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x1

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x2

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x3

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x4

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x5

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    goto/16 :goto_3

    :pswitch_3
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_3

    const/4 v2, 0x6

    new-array v0, v2, [D

    move-object/from16 v19, v0

    const/4 v2, 0x0

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x1

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x2

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x3

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x4

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    const/4 v2, 0x5

    iget-wide v4, v15, Lcom/android/settingsstock/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v4, v4

    aput-wide v4, v19, v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 0x4
        0x71t 0x7t 0xbt 0x7ft
        0x72t 0x7t 0xbt 0x7ft
        0x73t 0x7t 0xbt 0x7ft
        0x74t 0x7t 0xbt 0x7ft
        0x75t 0x7t 0xbt 0x7ft
        0x77t 0x7t 0xbt 0x7ft
        0x78t 0x7t 0xbt 0x7ft
        0x79t 0x7t 0xbt 0x7ft
        0x7at 0x7t 0xbt 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x7bt 0x7t 0xbt 0x7ft
        0x7ct 0x7t 0xbt 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x75t 0x7t 0xbt 0x7ft
        0x71t 0x7t 0xbt 0x7ft
        0x72t 0x7t 0xbt 0x7ft
        0x73t 0x7t 0xbt 0x7ft
        0x77t 0x7t 0xbt 0x7ft
        0x78t 0x7t 0xbt 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x7bt 0x7t 0xbt 0x7ft
        0x71t 0x7t 0xbt 0x7ft
        0x72t 0x7t 0xbt 0x7ft
        0x73t 0x7t 0xbt 0x7ft
        0x77t 0x7t 0xbt 0x7ft
        0x78t 0x7t 0xbt 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAbort:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method public run()V
    .locals 4

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/settingsstock/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
