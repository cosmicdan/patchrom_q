.class public Lcom/android/settingsstock/PointerSpeedPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/PointerSpeedPreference$SavedState;
    }
.end annotation


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mOldSpeed:I

.field private mRestoredOldState:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settingsstock/PointerSpeedPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/PointerSpeedPreference$1;-><init>(Lcom/android/settingsstock/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/PointerSpeedPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->onSpeedChanged()V

    return-void
.end method

.method private onSpeedChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private restoreOldState()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    iget v1, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mOldSpeed:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mRestoredOldState:Z

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/android/settingsstock/PointerSpeedPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mOldSpeed:I

    iget-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mOldSpeed:I

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, -0x7

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mTouchInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;

    invoke-virtual {v0}, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;->oldSpeed:I

    iput v1, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mOldSpeed:I

    iget-object v1, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, v0, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;->progress:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    iget v2, v0, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;->progress:I

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;->progress:I

    iget v2, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mOldSpeed:I

    iput v2, v0, Lcom/android/settingsstock/PointerSpeedPreference$SavedState;->oldSpeed:I

    invoke-direct {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mTouchInProgress:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mTouchInProgress:Z

    iget-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/PointerSpeedPreference;->mRestoredOldState:Z

    return-void
.end method
