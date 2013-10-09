.class public Lcom/android/settingsstock/applications/CustomizedScrollView;
.super Landroid/widget/ScrollView;
.source "CustomizedScrollView.java"


# instance fields
.field private final mOverscrollDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mOverscrollDistance:I

    return-void
.end method

.method private clamp(III)I
    .locals 1

    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1

    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/CustomizedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/applications/CustomizedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/CustomizedScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method


# virtual methods
.method public scrollTo(II)V
    .locals 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/CustomizedScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/applications/CustomizedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settingsstock/applications/CustomizedScrollView;->getScrollRange()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/CustomizedScrollView;->getOverScrollMode()I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_1

    if-lez v3, :cond_1

    :cond_0
    move v0, v6

    :cond_1
    if-eqz v0, :cond_2

    iget v6, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mOverscrollDistance:I

    if-gtz v6, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/applications/CustomizedScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mPaddingLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-direct {p0, v4, v6, v7}, Lcom/android/settingsstock/applications/CustomizedScrollView;->clamp(III)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settingsstock/applications/CustomizedScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mPaddingTop:I

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settingsstock/applications/CustomizedScrollView;->clamp(III)I

    move-result v5

    :cond_3
    iget v6, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mScrollX:I

    if-ne v4, v6, :cond_4

    iget v6, p0, Lcom/android/settingsstock/applications/CustomizedScrollView;->mScrollY:I

    if-eq v5, v6, :cond_5

    :cond_4
    invoke-super {p0, v4, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_5
    return-void
.end method
