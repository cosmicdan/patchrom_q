.class public Lcom/android/settingsstock/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AirplaneModeEnabler"


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mServiceState1:I

.field private mServiceState2:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mServiceState1:I

    iput v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mServiceState2:I

    new-instance v0, Lcom/android/settingsstock/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/AirplaneModeEnabler$1;-><init>(Lcom/android/settingsstock/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/AirplaneModeEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/AirplaneModeEnabler$2;-><init>(Lcom/android/settingsstock/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settingsstock/AirplaneModeEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/AirplaneModeEnabler$3;-><init>(Lcom/android/settingsstock/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/AirplaneModeEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settingsstock/AirplaneModeEnabler;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mServiceState1:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settingsstock/AirplaneModeEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settingsstock/AirplaneModeEnabler;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mServiceState2:I

    return p1
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingsstock/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mServiceState1:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mServiceState2:I

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "AirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unfinish! serviceState1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mServiceState1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceState2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mServiceState2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "AirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish! airplaneModeEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingsstock/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    :goto_0
    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settingsstock/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/AirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method
