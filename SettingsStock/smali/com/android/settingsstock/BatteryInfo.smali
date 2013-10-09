.class public Lcom/android/settingsstock/BatteryInfo;
.super Landroid/app/Activity;
.source "BatteryInfo.java"


# static fields
.field private static final EVENT_TICK:I = 0x1


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mHandler:Landroid/os/Handler;

.field private mHealth:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLevel:Landroid/widget/TextView;

.field private mPower:Landroid/widget/TextView;

.field private mScale:Landroid/widget/TextView;

.field private mScreenStats:Landroid/os/IPowerManager;

.field private mStatus:Landroid/widget/TextView;

.field private mTechnology:Landroid/widget/TextView;

.field private mTemperature:Landroid/widget/TextView;

.field private mUptime:Landroid/widget/TextView;

.field private mVoltage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settingsstock/BatteryInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/BatteryInfo$1;-><init>(Lcom/android/settingsstock/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/BatteryInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/BatteryInfo$2;-><init>(Lcom/android/settingsstock/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/BatteryInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/BatteryInfo;->updateBatteryStats()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mLevel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mScale:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/BatteryInfo;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/BatteryInfo;->tenthsToFixedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mPower:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mHealth:Landroid/widget/TextView;

    return-object v0
.end method

.method private final tenthsToFixedString(I)Ljava/lang/String;
    .locals 3

    div-int/lit8 v0, p1, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, v0, 0xa

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateBatteryStats()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settingsstock/BatteryInfo;->mUptime:Landroid/widget/TextView;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->setContentView(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mStatus:Landroid/widget/TextView;

    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mPower:Landroid/widget/TextView;

    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mLevel:Landroid/widget/TextView;

    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mScale:Landroid/widget/TextView;

    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mHealth:Landroid/widget/TextView;

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mUptime:Landroid/widget/TextView;

    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mScreenStats:Landroid/os/IPowerManager;

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/settingsstock/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settingsstock/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/BatteryInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
