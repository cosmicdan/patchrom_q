.class public Lcom/android/settingsstock/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiEnabler"


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field mExt:Lcom/android/settingsstock/ext/IWifiExt;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/settingsstock/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/wifi/WifiEnabler$1;-><init>(Lcom/android/settingsstock/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IWifiExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/wifi/WifiEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 7

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v5}, Lcom/android/settingsstock/wifi/WifiEnabler;->setSwitchChecked(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    invoke-interface {v5}, Lcom/android/settingsstock/ext/IWifiExt;->getSwitchState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/settingsstock/wifi/WifiEnabler;->setSwitchChecked(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    invoke-interface {v5}, Lcom/android/settingsstock/ext/IWifiExt;->getSwitchState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "WifiEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][wifi] wifi enable end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/settingsstock/wifi/WifiEnabler;->setSwitchChecked(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    invoke-interface {v5}, Lcom/android/settingsstock/ext/IWifiExt;->getSwitchState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v4, "WifiEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][wifi] wifi disable end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mStateMachineEvent:Z

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mStateMachineEvent:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-static {v1, v2}, Lcom/android/settingsstock/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b043c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    if-eqz p2, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b043b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    invoke-interface {v0}, Lcom/android/settingsstock/ext/IWifiExt;->unRegisterAirplaneObserver()V

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-interface {v0, v1}, Lcom/android/settingsstock/ext/IWifiExt;->registerAirplaneModeObserver(Landroid/widget/Switch;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-interface {v0, v1}, Lcom/android/settingsstock/ext/IWifiExt;->initSwitchState(Landroid/widget/Switch;)V

    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    move v1, v3

    :goto_1
    if-ne v2, v3, :cond_4

    move v0, v3

    :goto_2
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-interface {v3, v4}, Lcom/android/settingsstock/ext/IWifiExt;->initSwitchState(Landroid/widget/Switch;)V

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2
.end method
