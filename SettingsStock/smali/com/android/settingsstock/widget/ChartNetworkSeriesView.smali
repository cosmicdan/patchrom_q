.class public Lcom/android/settingsstock/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# static fields
.field private static final ESTIMATE_ENABLED:Z = false

.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "ChartNetworkSeriesView"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/settingsstock/widget/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mPrimaryLeft:J

.field private mPrimaryRight:J

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mVert:Lcom/android/settingsstock/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/high16 v7, -0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEndTime:J

    iput-boolean v6, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathValid:Z

    iput-boolean v6, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    sget-object v4, Lcom/android/settingsstock/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->setChartColor(III)V

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    return-void
.end method

.method private generatePath()V
    .locals 29

    const-string v25, "ChartNetworkSeriesView"

    const-string v26, "generatePath()"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v25, 0x0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mMax:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathValid:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v10

    const/16 v21, 0x0

    const/4 v14, 0x0

    int-to-float v15, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settingsstock/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lcom/android/settingsstock/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    const-wide/16 v22, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStart:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEnd:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v4

    move/from16 v11, v16

    :goto_1
    if-gt v11, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v9}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v17, v0

    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-wide/from16 v25, v0

    add-long v5, v17, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settingsstock/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v17

    invoke-interface {v0, v1, v2}, Lcom/android/settingsstock/widget/ChartAxis;->convertToPoint(J)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settingsstock/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v5, v6}, Lcom/android/settingsstock/widget/ChartAxis;->convertToPoint(J)F

    move-result v7

    const/16 v25, 0x0

    cmpg-float v25, v7, v25

    if-gez v25, :cond_2

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v25, v0

    iget-wide v0, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v27, v0

    add-long v25, v25, v27

    add-long v22, v22, v25

    move/from16 v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settingsstock/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lcom/android/settingsstock/widget/ChartAxis;->convertToPoint(J)F

    move-result v8

    cmp-long v25, v12, v17

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move v14, v7

    move v15, v8

    move-wide v12, v5

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEndTime:J

    move-wide/from16 v25, v0

    cmp-long v25, v12, v25

    if-gez v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settingsstock/widget/ChartAxis;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEndTime:J

    move-wide/from16 v26, v0

    invoke-interface/range {v25 .. v27}, Lcom/android/settingsstock/widget/ChartAxis;->convertToPoint(J)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    const-string v25, "ChartNetworkSeriesView"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onLayout() rendered with bounds="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v3}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " and totalData="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    int-to-float v0, v10

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    int-to-float v0, v10

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mMax:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->invalidatePath()V

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method public getMaxEstimate()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 9

    iget-boolean v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v0, :cond_1

    iget-wide v7, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v6

    iget-wide v0, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v7, v0, v2

    :cond_0
    return-wide v7

    :cond_1
    iget-wide v7, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mMax:J

    goto :goto_0
.end method

.method init(Lcom/android/settingsstock/widget/ChartAxis;Lcom/android/settingsstock/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settingsstock/widget/ChartAxis;

    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settingsstock/widget/ChartAxis;

    return-void
.end method

.method public invalidatePath()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathValid:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mMax:J

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->generatePath()V

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settingsstock/widget/ChartAxis;

    iget-wide v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    invoke-interface {v3, v4, v5}, Lcom/android/settingsstock/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    iget-object v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settingsstock/widget/ChartAxis;

    iget-wide v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    invoke-interface {v3, v4, v5}, Lcom/android/settingsstock/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    iget-boolean v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    invoke-virtual {p1, v7, v7, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v6, v6, v0, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v6, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setBounds(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mStart:J

    iput-wide p3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEnd:J

    return-void
.end method

.method public setChartColor(III)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEndTime:J

    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method public setPrimaryRange(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    iput-wide p3, p0, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    invoke-virtual {p0}, Lcom/android/settingsstock/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method
