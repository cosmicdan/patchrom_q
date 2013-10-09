.class public Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# static fields
.field static final BATTERY_CRITICAL:I = 0xe

.field static final BATTERY_WARN:I = 0x1d

.field static final CHART_DATA_BIN_MASK:I = -0x10000

.field static final CHART_DATA_BIN_SHIFT:I = 0x10

.field static final CHART_DATA_X_MASK:I = 0xffff

.field static final MONOSPACE:I = 0x3

.field static final NUM_PHONE_SIGNALS:I = 0x7

.field static final PHONE_SIGNAL_BIN_MASK:I = -0x10000

.field static final PHONE_SIGNAL_BIN_SHIFT:I = 0x10

.field static final PHONE_SIGNAL_X_MASK:I = 0xffff

.field static final SANS:I = 0x1

.field static final SERIF:I = 0x2


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mFontSize:I

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLevelBottom:I

.field mLevelOffset:I

.field mLevelTop:I

.field mLineWidth:I

.field mNumHist:I

.field mOffSpace:I

.field final mPhoneSignalChart:Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field mTotalDurationString:Ljava/lang/String;

.field mTotalDurationStringWidth:I

.field mWakeLockLabel:Ljava/lang/String;

.field mWakeLockOffset:I

.field final mWakeLockPaint:Landroid/graphics/Paint;

.field final mWakeLockPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 25

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    new-instance v20, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct/range {v20 .. v20}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;

    new-instance v20, Landroid/text/TextPaint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xff

    const/16 v22, 0x80

    const/16 v23, 0x80

    const/16 v24, 0x80

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x80

    const/16 v22, 0x0

    const/16 v23, 0xff

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x80

    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xc0

    const/16 v22, 0xff

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xff

    const/16 v22, 0x0

    const/16 v23, 0x80

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/TextPaint;->density:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    sget-object v20, Lcom/android/settingsstock/R$styleable;->BatteryHistoryChart:[I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v16, 0x0

    const/16 v17, 0xf

    const/16 v19, -0x1

    const/4 v15, -0x1

    const/4 v7, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_0

    sget-object v20, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    :cond_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_1

    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    goto :goto_1

    :pswitch_1
    move/from16 v0, v17

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    goto :goto_1

    :pswitch_2
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    goto :goto_1

    :pswitch_3
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_3

    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    packed-switch v8, :pswitch_data_1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :pswitch_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    goto :goto_3

    :pswitch_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    goto :goto_3

    :pswitch_6
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    goto :goto_3

    :pswitch_7
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    goto :goto_3

    :pswitch_8
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    goto :goto_3

    :pswitch_9
    move/from16 v0, v17

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    goto :goto_3

    :pswitch_a
    move/from16 v0, v19

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    goto :goto_3

    :pswitch_b
    invoke-virtual {v5, v8, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->setTextSize(F)V

    const/16 v18, 0x0

    packed-switch v19, :pswitch_data_2

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v9, v10, v14}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_4
    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mOffSpace:I

    return-void

    :pswitch_c
    sget-object v18, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_4

    :pswitch_d
    sget-object v18, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_4

    :pswitch_e
    sget-object v18, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xfft
        0x0t 0xa0t 0xa0t 0xfft
        0x20t 0x80t 0x80t 0xfft
        0x40t 0x80t 0x80t 0xfft
        0x60t 0x80t 0x80t 0xfft
        0x0t 0x80t 0x0t 0xfft
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 4

    if-eqz p6, :cond_2

    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    if-eqz p13, :cond_0

    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v1, p4

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    :cond_2
    if-eqz p8, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    if-eqz p9, :cond_4

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    if-eqz p10, :cond_5

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    if-eqz p11, :cond_6

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    if-eqz p12, :cond_7

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_7
    iget-boolean v1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    :cond_8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v6

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    div-int/lit8 v2, v9, 0x2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v0, v6, v0

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v8, v0, v2

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    invoke-virtual {v0, p1, v8, v2}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    :cond_3
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    iget-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mOffSpace:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    iget-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mOffSpace:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    iget-boolean v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mOffSpace:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mOffSpace:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mOffSpace:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mOffSpace:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v9

    iget v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0xa

    if-ge v7, v0, :cond_d

    iget v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v7

    div-int/lit8 v2, v2, 0xa

    add-int v10, v0, v2

    int-to-float v2, v10

    iget v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    int-to-float v4, v10

    iget-object v5, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    div-int/lit8 v2, v9, 0x2

    iget v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-int/lit8 v3, v6, 0x2

    iget v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    iget v5, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 39

    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v27, v2, v3

    const/4 v2, 0x1

    const/high16 v3, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v2, v27, 0x6

    move/from16 v0, p2

    if-le v0, v2, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    mul-int/lit8 v2, v27, 0xf

    move/from16 v0, p2

    if-le v0, v2, :cond_a

    div-int/lit8 v2, v27, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v2, v2, v27

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v17, v27, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_c

    move/from16 v2, v17

    :goto_2
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_d

    move/from16 v2, v17

    :goto_3
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v3, :cond_e

    :goto_4
    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v37, v0

    sub-long v28, v2, v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v18, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v7, -0x1

    const/16 v23, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v25, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_21

    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_21

    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, v30

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v37, v0

    mul-long v2, v2, v37

    div-long v2, v2, v28

    long-to-int v0, v2

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, v25

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v3, v3, v19

    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v3, v4

    div-int v3, v3, v18

    sub-int v36, v2, v3

    move/from16 v0, v35

    if-eq v9, v0, :cond_9

    move/from16 v0, v36

    if-eq v7, v0, :cond_3

    move-object/from16 v0, v25

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    const/16 v2, 0xe

    move/from16 v0, v32

    if-gt v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    :goto_7
    move-object/from16 v0, v24

    if-eq v0, v15, :cond_12

    if-eqz v15, :cond_2

    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v15, v24

    :goto_8
    if-nez v8, :cond_13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v6, v35

    :goto_9
    move/from16 v9, v35

    move/from16 v7, v36

    :cond_3
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    const/16 v21, 0x1

    :goto_a
    move/from16 v0, v21

    if-eq v0, v10, :cond_4

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_b
    move/from16 v10, v21

    :cond_4
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    const/16 v26, 0x1

    :goto_c
    move/from16 v0, v26

    if-eq v0, v11, :cond_5

    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_d
    move/from16 v11, v26

    :cond_5
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    const/16 v22, 0x1

    :goto_e
    move/from16 v0, v22

    if-eq v0, v12, :cond_6

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_f
    move/from16 v12, v22

    :cond_6
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    const/16 v34, 0x1

    :goto_10
    move/from16 v0, v34

    if-eq v0, v13, :cond_7

    if-eqz v34, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_11
    move/from16 v13, v34

    :cond_7
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    const/16 v33, 0x1

    :goto_12
    move/from16 v0, v33

    if-eq v0, v14, :cond_8

    if-eqz v33, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_13
    move/from16 v14, v33

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0xf00

    shr-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    const/16 v20, 0x0

    :goto_14
    const-string v2, "battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTick bin  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    :cond_9
    :goto_15
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    :cond_a
    div-int/lit8 v2, v27, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_5

    :cond_10
    const/16 v2, 0x1d

    move/from16 v0, v32

    if-gt v0, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    goto/16 :goto_7

    :cond_12
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    :cond_13
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    :cond_14
    const/16 v21, 0x0

    goto/16 :goto_a

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_e

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    :cond_1a
    const/16 v34, 0x0

    goto/16 :goto_10

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_12

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    :cond_1e
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    const/16 v20, 0x1

    goto/16 :goto_14

    :cond_1f
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v20, v2, 0x4

    add-int/lit8 v20, v20, 0x2

    const-string v2, "battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bin  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_20
    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    if-eqz v8, :cond_9

    add-int/lit8 v3, v35, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    const/4 v7, -0x1

    move v9, v7

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    move v12, v14

    move v11, v14

    move v10, v14

    goto/16 :goto_15

    :cond_21
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    return-void
.end method

.method setStats(Landroid/os/BatteryStats;)V
    .locals 14

    iput-object p1, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    iget-object v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/settingsstock/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b0759

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b075b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b075c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b075d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b075e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b075f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b0760

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatLow:I

    const/16 v9, 0x64

    iput v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v6, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v5, v5, 0x1

    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistStart:J

    :cond_1
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v9, v4, :cond_2

    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    :cond_2
    iget-byte v4, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    :cond_3
    move v3, v5

    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget v9, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v0, v9

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mNumHist:I

    const/high16 v9, 0x1000

    and-int/2addr v9, v0

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    const/high16 v9, 0x400

    and-int/2addr v9, v0

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    :cond_5
    iget-wide v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v11, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistStart:J

    cmp-long v9, v9, v11

    if-gtz v9, :cond_6

    iget-wide v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistStart:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    :cond_6
    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v12, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mHistStart:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/settingsstock/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    return-void

    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :goto_3
    return-void

    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method
