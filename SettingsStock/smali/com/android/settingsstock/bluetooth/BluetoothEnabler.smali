.class public final Lcom/android/settingsstock/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothEnabler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mUpdateStatusOnly:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    new-instance v1, Lcom/android/settingsstock/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    iput-boolean v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mValidListener:Z

    invoke-static {p1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settingsstock/bluetooth/BluetoothEnabler;)Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private setChecked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v2}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    const-string v0, "BluetoothEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    const-string v0, "BluetoothEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iput-boolean v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    const-string v0, "BluetoothEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    const-string v0, "BluetoothEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BluetoothEnabler"

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settingsstock/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0b043c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    const-string v0, "BluetoothEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdateStatusOnly is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v6, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v7, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v7, :cond_1

    move-object v3, p0

    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/16 v0, 0xa

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    :cond_2
    const/16 v3, 0xc

    if-ne v0, v3, :cond_5

    move v2, v4

    :goto_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_6

    move v1, v4

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_1

    :cond_6
    move v1, v5

    goto :goto_2
.end method
