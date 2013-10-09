.class public Lcom/android/settingsstock/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I = null

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x65

.field private static final SEEKBAR_ID:[I = null

.field private static final SEEKBAR_MUTED_RES_ID:[I = null

.field private static final SEEKBAR_TYPE:[I = null

.field private static final SEEKBAR_UNMUTED_RES_ID:[I = null

.field private static final TAG:Ljava/lang/String; = "RingerVolumePreference"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_TYPE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settingsstock/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfet 0x0t 0x8t 0x7ft
        0x2t 0x1t 0x8t 0x7ft
        0x6t 0x1t 0x8t 0x7ft
        0x8t 0x1t 0x8t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xfdt 0x0t 0x8t 0x7ft
        0x1t 0x1t 0x8t 0x7ft
        0x5t 0x1t 0x8t 0x7ft
        0x7t 0x1t 0x8t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xa7t 0x2t 0x8t 0x1t
        0xa4t 0x2t 0x8t 0x1t
        0xa1t 0x2t 0x8t 0x1t
        0x9dt 0x2t 0x8t 0x1t
    .end array-data

    :array_4
    .array-data 0x4
        0xa6t 0x2t 0x8t 0x1t
        0xa3t 0x2t 0x8t 0x1t
        0xa0t 0x2t 0x8t 0x1t
        0x9ct 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    sget-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    new-instance v0, Lcom/android/settingsstock/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/RingerVolumePreference$1;-><init>(Lcom/android/settingsstock/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/RingerVolumePreference;->setStreamType(I)V

    const v0, 0x7f040066

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/RingerVolumePreference;->setDialogLayoutResource(I)V

    sget-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/RingerVolumePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    sget-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    iget-object v2, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settingsstock/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    return-void
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    sget-object v4, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x10802a5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v2, v4, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/RingerVolumePreference;->setPositiveButtonText(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/RingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityStop()V
    .locals 4

    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    const/4 v9, 0x0

    :goto_0
    sget-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    if-ge v9, v0, :cond_1

    sget-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v0, v9

    sget-object v0, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v0, v0, v9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v11, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v0, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settingsstock/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v1, v9

    invoke-virtual {p0}, Lcom/android/settingsstock/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/RingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v0, v11, v9

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settingsstock/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v4, v4, v9

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v1, v0, v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    sget-object v0, Lcom/android/settingsstock/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v6, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/RingerVolumePreference;->updateSlidersAndMutedStates()V

    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingsstock/RingerVolumePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/RingerVolumePreference$2;-><init>(Lcom/android/settingsstock/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settingsstock/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingsstock/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const v10, 0x7f0800ff

    :goto_3
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    const v10, 0x7f080103

    goto :goto_3
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/RingerVolumePreference;->cleanup()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    :sswitch_0
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/android/settingsstock/RingerVolumePreference$SavedState;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/android/settingsstock/RingerVolumePreference$SavedState;

    invoke-virtual {v1}, Lcom/android/settingsstock/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v4, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/android/settingsstock/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v4, v0

    if-eqz v2, :cond_3

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingsstock/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/android/settingsstock/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settingsstock/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    sget-object v5, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settingsstock/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    const/4 v0, 0x0

    :goto_1
    sget-object v5, Lcom/android/settingsstock/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/settingsstock/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    if-eqz v3, :cond_1

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method
