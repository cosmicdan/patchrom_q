.class public Lcom/android/settingsstock/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/BrightnessPreference$SavedState;
    }
.end annotation


# static fields
.field private static final AUTOMATIC_ECO_MODE:I = 0x2

.field private static final BRIGHTNESS_MODE_MANUAL:I = 0x0

.field private static final SEEK_BAR_RANGE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "BrightnessPreference"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field private mAutoBacklightCheckBox:Landroid/widget/CheckBox;

.field private mAutoBacklightTitle:Landroid/widget/TextView;

.field private mAutoBackligthSummary:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mAutomaticEcoMode:Z

.field private mAutomaticMode:Z

.field private mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurBrightness:I

.field private mEcoFirstLaunch:Z

.field private mEcoModeChangeOut:Z

.field private mEcoModeChangeSelf:Z

.field private mFirstLaunch:Z

.field private mModeChangeOut:Z

.field private mModeChangeSelf:Z

.field private mOldAutomatic:I

.field private mOldAutomaticEco:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingsstock/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeOut:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeSelf:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoFirstLaunch:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mCurBrightness:I

    iput-boolean v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeOut:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeSelf:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mFirstLaunch:Z

    new-instance v3, Lcom/android/settingsstock/BrightnessPreference$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settingsstock/BrightnessPreference$1;-><init>(Lcom/android/settingsstock/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/android/settingsstock/BrightnessPreference$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settingsstock/BrightnessPreference$2;-><init>(Lcom/android/settingsstock/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/android/settingsstock/BrightnessPreference$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settingsstock/BrightnessPreference$3;-><init>(Lcom/android/settingsstock/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMinimum:I

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v3

    iput v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMaximum:I

    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticAvailable:Z

    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAutomaticAvailable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f040065

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/BrightnessPreference;->setDialogLayoutResource(I)V

    const v2, 0x7f020081

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/BrightnessPreference;->setDialogIcon(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/BrightnessPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/BrightnessPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/BrightnessPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/BrightnessPreference;->onBrightnessEcoModeChanged()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 4

    move v0, p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "BrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrightnessEcoMode(I)I
    .locals 5

    move v0, p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_eco_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightnessEcoMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    const-string v2, "BrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 5

    move v0, p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightnessMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    const-string v2, "BrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 3

    const-string v1, "BrightnessPreference"

    const-string v2, "onBrightnessChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMaximum:I

    invoke-direct {p0, v1}, Lcom/android/settingsstock/BrightnessPreference;->getBrightness(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iput v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldBrightness:I

    return-void
.end method

.method private onBrightnessEcoModeChanged()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "BrightnessPreference"

    const-string v2, "onBrightnessEcoModeChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/settingsstock/BrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/BrightnessPreference;->updateOldAutomaticEcoMode()V

    iget-object v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "BrightnessPreference"

    const-string v4, "onBrightnessModeChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/settingsstock/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/BrightnessPreference;->updateOldAutomaticMode()V

    iget-object v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/android/settingsstock/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private restoreOldState()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settingsstock/BrightnessPreference;->setMode(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomatic:I

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/settingsstock/BrightnessPreference;->setBrightness(I)V

    iget v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/settingsstock/BrightnessPreference;->updateSeekBarPos(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method private setBrightness(I)V
    .locals 2

    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setEcoMode(I)V
    .locals 3

    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEcoMode, the mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticEcoMode:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_eco_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEcoModeChangeState()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoFirstLaunch:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoFirstLaunch:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeOut:Z

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeOut:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeSelf:Z

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode, the mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setModeChangeState()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mFirstLaunch:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mFirstLaunch:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeOut:Z

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeOut:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeSelf:Z

    goto :goto_0
.end method

.method private updateOldAutomaticEcoMode()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BrightnessPreference"

    const-string v1, "updateOldAutomaticEcoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeOut:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settingsstock/BrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomaticEco:I

    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOldAutomaticEcoMode + mOldAutomaticEco = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomaticEco:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeOut:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mEcoModeChangeSelf:Z

    :cond_2
    return-void
.end method

.method private updateOldAutomaticMode()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BrightnessPreference"

    const-string v1, "updateOldAutomaticMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeOut:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settingsstock/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomatic:I

    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOldAutomaticMode+mOldAutomatic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomatic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeSelf:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeOut:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mModeChangeSelf:Z

    :cond_2
    return-void
.end method

.method private updateSeekBarPos(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    const-string v0, "BrightnessPreference"

    const-string v1, "updateSeekBar position"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/android/settingsstock/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-direct {p0, v2}, Lcom/android/settingsstock/BrightnessPreference;->getBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldBrightness:I

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldBrightness:I

    iget v4, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    const v0, 0x7f0800f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0800fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0800fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0, v2}, Lcom/android/settingsstock/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomatic:I

    iget v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomatic:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticMode:Z

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settingsstock/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v3, 0x7f0800f9

    if-ne v0, v3, :cond_4

    const-string v0, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged, automatic isChecked =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/BrightnessPreference;->setModeChangeState()V

    if-eqz p2, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settingsstock/BrightnessPreference;->setMode(I)V

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settingsstock/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settingsstock/BrightnessPreference;->setBrightness(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0800fa

    if-ne v0, v1, :cond_2

    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, backlight isChecked =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/BrightnessPreference;->setEcoModeChangeState()V

    if-eqz p2, :cond_5

    const/4 v2, 0x2

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settingsstock/BrightnessPreference;->setEcoMode(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4

    const-string v1, "BrightnessPreference"

    const-string v2, "onDialogClosed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/android/settingsstock/BrightnessPreference;->setBrightness(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Lcom/android/settingsstock/BrightnessPreference$SavedState;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;

    invoke-virtual {v0}, Lcom/android/settingsstock/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->oldProgress:I

    iput v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldBrightness:I

    iget-boolean v1, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomatic:I

    iget-boolean v1, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v1, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settingsstock/BrightnessPreference;->setMode(I)V

    iget v1, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->curBrightness:I

    iput v1, p0, Lcom/android/settingsstock/BrightnessPreference;->mCurBrightness:I

    iget v1, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->progress:I

    iget v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/settingsstock/BrightnessPreference;->setBrightness(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settingsstock/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->automatic:Z

    iget-object v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->progress:I

    iget v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->oldAutomatic:Z

    iget v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->oldProgress:I

    iget v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/settingsstock/BrightnessPreference$SavedState;->curBrightness:I

    invoke-direct {p0}, Lcom/android/settingsstock/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/settingsstock/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/settingsstock/BrightnessPreference;->mFirstLaunch:Z

    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView---mFirstLaunch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mFirstLaunch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
