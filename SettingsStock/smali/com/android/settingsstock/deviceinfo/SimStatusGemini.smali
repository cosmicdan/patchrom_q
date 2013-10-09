.class public Lcom/android/settingsstock/deviceinfo/SimStatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final TAG:Ljava/lang/String; = "Gemini_SimStatus"

.field private static sRes:Landroid/content/res/Resources;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mServiceState:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthPreference:Landroid/preference/Preference;

.field private mSimId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    iput-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    iput-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;-><init>(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$1;-><init>(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$2;-><init>(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->updateDataState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)Landroid/telephony/SignalStrength;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mServiceState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mServiceState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
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
    const-string v4, "Gemini_SimStatus"

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

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "Gemini_SimStatus"

    const-string v4, "fail to get system property"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateDataState()V
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v3, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v1

    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b028b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0289

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b028a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0288

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0287

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_type"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b028b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "roaming_state"

    sget-object v3, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0282

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b027e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b027f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0280

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0281

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "roaming_state"

    sget-object v3, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0283

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v4, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v4, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    const v4, 0x7f050012

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "slotid"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    const-string v4, "Gemini_SimStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimId is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    if-ne v4, v7, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->dealWith3AppLaunch()I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    :cond_0
    iget v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-static {p0, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    if-eqz v3, :cond_1

    iget-object v2, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sput-object v4, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v5, 0x7f0b026a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v4, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v4, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v4, "signal_strength"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-boolean v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$3;

    invoke-direct {v5, p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini$3;-><init>(Lcom/android/settingsstock/deviceinfo/SimStatusGemini;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getLine1NumberGemini(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v4, "number"

    invoke-direct {p0, v4, v0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->updateDataState()V

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mServiceState:I

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v5, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x141

    iget v7, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSimId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0
.end method

.method updateSignalStrength()V
    .locals 11

    const v10, 0x7f0b028e

    const/4 v5, 0x0

    const/4 v9, -0x1

    const-string v6, "Gemini_SimStatus"

    const-string v7, "updateSignalStrength()"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mServiceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mServiceState:I

    if-eq v6, v7, :cond_0

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mServiceState:I

    if-ne v6, v7, :cond_1

    :cond_0
    const-string v6, "Gemini_SimStatus"

    const-string v7, "ServiceState is Not ready, set signalStrength 0"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrengthDbm()I

    move-result v3

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " asu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v9, v3, :cond_2

    move v3, v5

    :cond_2
    if-ne v9, v2, :cond_3

    move v2, v5

    :cond_3
    :goto_0
    if-eqz v0, :cond_8

    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " asu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b028f

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v4

    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v9, v3, :cond_6

    move v3, v5

    :cond_6
    if-ne v9, v4, :cond_7

    move v4, v5

    :cond_7
    goto/16 :goto_0

    :cond_8
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0b01c0

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
