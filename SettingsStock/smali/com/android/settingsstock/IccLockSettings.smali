.class public Lcom/android/settingsstock/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settingsstock/EditPinPreference$OnPinEnteredListener;


# static fields
.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialogError"

.field private static final DIALOG_PIN:Ljava/lang/String; = "dialogPin"

.field private static final DIALOG_STATE:Ljava/lang/String; = "dialogState"

.field private static final ENABLE_TO_STATE:Ljava/lang/String; = "enableState"

.field private static final GET_SIM_RETRY_EMPTY:I = -0x64

.field private static final ICC_LOCK_MODE:I = 0x1

.field private static final ICC_NEW_MODE:I = 0x3

.field private static final ICC_OLD_MODE:I = 0x2

.field private static final ICC_REENTER_MODE:I = 0x4

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG_CHANGE_ICC_PIN_COMPLETE:I = 0x65

.field private static final MSG_ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final MSG_SIM_STATE_CHANGED:I = 0x66

.field private static final NEW_PINCODE:Ljava/lang/String; = "newPinCode"

.field private static final OFF_MODE:I = 0x0

.field private static final OLD_PINCODE:Ljava/lang/String; = "oldPinCode"

.field private static final PIN_DIALOG:Ljava/lang/String; = "sim_pin"

.field private static final PIN_TOGGLE:Ljava/lang/String; = "sim_toggle"

.field private static final SIM_ID:Ljava/lang/String; = "sim_id"

.field private static final TAG:Ljava/lang/String; = "IccLockSettings"


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeadLocked:Z

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settingsstock/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mSimId:I

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput v1, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    iput-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mIsUnlockFollow:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mIsShouldBeFinished:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mIsDeadLocked:Z

    new-instance v0, Lcom/android/settingsstock/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/IccLockSettings$1;-><init>(Lcom/android/settingsstock/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/IccLockSettings$2;-><init>(Lcom/android/settingsstock/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/IccLockSettings$3;-><init>(Lcom/android/settingsstock/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mServiceComplete:Ljava/lang/Runnable;

    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/IccLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/IccLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/IccLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/IccLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settingsstock/IccLockSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/IccLockSettings;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settingsstock/IccLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingsstock/IccLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->updateOnSimLockStateChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingsstock/IccLockSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/IccLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->gobackSettings()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settingsstock/IccLockSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settingsstock/IccLockSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/IccLockSettings;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settingsstock/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private dealWith3AppLaunch()I
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, -0x1

    :cond_0
    :goto_0
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealWith3AppLaunch() slotID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_0

    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v2, v4, :cond_3

    iget v2, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1
.end method

.method private getRetryPin()Ljava/lang/String;
    .locals 8

    const v7, 0x7f0b00c6

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->getRetryPinCount()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " retry pin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/android/settingsstock/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v7, v1}, Lcom/android/settingsstock/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    const-string v1, " "

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
    .end packed-switch
.end method

.method private getRetryPinCount()I
    .locals 3

    const/16 v2, -0x64

    iget v0, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-nez v0, :cond_0

    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-ne v0, v1, :cond_1

    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "IccLockSettings"

    const-string v1, "getRetryPinCount sim id error"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getRetryPukCount()I
    .locals 3

    const/16 v2, -0x64

    iget v0, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-nez v0, :cond_0

    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-ne v0, v1, :cond_1

    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "IccLockSettings"

    const-string v1, "getRetryPukCount sim id error"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private gobackSettings()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settingsstock/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/IccLockSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/IccLockSettings;->finish()V

    return-void
.end method

.method private iccLockChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->resetDialogState()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b053a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->noRetryPinAvailable()Z

    goto :goto_0
.end method

.method private iccPinChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0538

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->noRetryPinAvailable()Z

    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->resetDialogState()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0539

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private noRetryPinAvailable()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->getRetryPinCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->getRetryPinCount()I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRetryPinCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->getRetryPinCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mIsDeadLocked:Z

    move v0, v1

    :cond_1
    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->setDialogValues()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    return-void
.end method

.method private setDialogValues()V
    .locals 5

    const v4, 0x7f0b0535

    const v3, 0x7f0b00c5

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/EditPinPreference;->setText(Ljava/lang/String;)V

    const-string v0, ""

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b052f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0530

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->getRetryPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settingsstock/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0531

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0532

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->getRetryPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0533

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->setDialogValues()V

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    const-string v1, "IccLockSettings"

    const-string v2, "tryChangeIccLockState [SIM 1]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    const-string v1, "IccLockSettings"

    const-string v2, "tryChangeIccLockState [SIM 2]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangeIccLockState sim id error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryChangePin()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingsstock/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const-string v1, "IccLockSettings"

    const-string v2, "tryChangePin [SIM 1]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingsstock/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const-string v1, "IccLockSettings"

    const-string v2, "tryChangePin [SIM 2]"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "IccLockSettings"

    const-string v2, "tryChangePin sim id error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateOnSimLockStateChanged()V
    .locals 3

    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOnSimLockStateChanged()+mIsDeadLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/IccLockSettings;->mIsDeadLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->getRetryPinCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingsstock/IccLockSettings;->mIsDeadLocked:Z

    if-eqz v0, :cond_0

    const-string v0, "IccLockSettings"

    const-string v1, "Restore state"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/IccLockSettings;->mIsDeadLocked:Z

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->resetDialogState()V

    :cond_0
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/IccLockSettings;->isIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/IccLockSettings;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b052c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v2, 0x7f0b052d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method isIccLockEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const-string v0, "IccLockSettings"

    const-string v1, "Sim lock sim id error."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "IccLockSettings"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/IccLockSettings;->finish()V

    :goto_0
    return-void

    :cond_0
    const v4, 0x7f050035

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/IccLockSettings;->addPreferencesFromResource(I)V

    iget-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v4, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "slotid"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimId is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    if-ne v4, v7, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->dealWith3AppLaunch()I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    :cond_1
    iget v4, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    invoke-static {p0, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    if-eqz v3, :cond_2

    iget-object v2, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    :cond_2
    if-eqz v2, :cond_3

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/IccLockSettings;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v4, "sim_pin"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settingsstock/EditPinPreference;

    iput-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    const-string v4, "sim_toggle"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDialogState is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "dialogState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    const-string v4, "dialogPin"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    const-string v4, "dialogError"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    const-string v4, "enableState"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settingsstock/IccLockSettings;->mToState:Z

    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDialogState is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPin is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mError is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mToState  is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settingsstock/IccLockSettings;->mToState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    invoke-virtual {v4, p0}, Lcom/android/settingsstock/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settingsstock/EditPinPreference$OnPinEnteredListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {p0}, Lcom/android/settingsstock/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->updatePreferences()V

    goto/16 :goto_0

    :pswitch_0
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mOldPin:Ljava/lang/String;

    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOldPin  is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    const-string v4, "oldPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mOldPin:Ljava/lang/String;

    const-string v4, "newPinCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/IccLockSettings;->mNewPin:Ljava/lang/String;

    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOldPin  is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNewPin   is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string v0, "IccLockSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string v0, "IccLockSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPinEntered(Lcom/android/settingsstock/EditPinPreference;Z)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->resetDialogState()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingsstock/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0536

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->showPinDialog()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mOldPin:Ljava/lang/String;

    iput v3, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    iput-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->showPinDialog()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mNewPin:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    iput-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->showPinDialog()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0537

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    iput v3, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    iput-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->showPinDialog()V

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->tryChangePin()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingsstock/IccLockSettings;->mToState:Z

    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settingsstock/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput v1, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    if-ne p2, v2, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    const-wide/16 v4, 0x1f4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v1, "IccLockSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsShouldBeFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settingsstock/IccLockSettings;->mIsShouldBeFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mIsShouldBeFinished:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/IccLockSettings;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mIsUnlockFollow:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mIsUnlockFollow:Z

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->getRetryPinCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->getRetryPinCount()I

    move-result v1

    const/16 v2, -0x64

    if-ne v1, v2, :cond_3

    :cond_1
    const-string v1, "IccLockSettings"

    const-string v2, "OnResume: postDelay call - handleCellConn 1"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settingsstock/IccLockSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/IccLockSettings$4;-><init>(Lcom/android/settingsstock/IccLockSettings;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->showPinDialog()V

    goto :goto_0

    :cond_3
    const-string v1, "IccLockSettings"

    const-string v2, "OnResume: postDelay call - handleCellConn 2"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settingsstock/IccLockSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/IccLockSettings$5;-><init>(Lcom/android/settingsstock/IccLockSettings;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/settingsstock/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mPinDialog:Lcom/android/settingsstock/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settingsstock/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settingsstock/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "sim_id"

    iget v1, p0, Lcom/android/settingsstock/IccLockSettings;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settingsstock/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settingsstock/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
