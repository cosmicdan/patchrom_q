.class public abstract Landroid/widget/CompoundButton;
.super Landroid/widget/Button;
.source "CompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButton$1;,
        Landroid/widget/CompoundButton$SavedState;,
        Landroid/widget/CompoundButton$OnCheckedChangeListener;,
        Landroid/widget/CompoundButton$Injector;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v3, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    return v1
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result v8

    and-int/lit8 v7, v8, 0x70

    invoke-static {v1, p0}, Landroid/widget/CompoundButton$Injector;->getDrawableHeight(Landroid/graphics/drawable/Drawable;Landroid/widget/CompoundButton;)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/4 v6, 0x0

    sparse-switch v7, :sswitch_data_0

    :goto_0
    add-int v0, v6, v2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v8

    sub-int v4, v8, v3

    :goto_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v5

    :goto_2
    invoke-virtual {v1, v4, v6, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v8

    sub-int v6, v8, v2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    div-int/lit8 v6, v8, 0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move v5, v3

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    invoke-virtual {v0}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setFreezesText(Z)V

    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Landroid/widget/CompoundButton$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    return-object v0
.end method

.method public performClick()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->notifyAccessibilityStateChanged()V

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_2
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
