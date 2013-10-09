.class Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "PowerUsageSummary"

    const-string v5, "ACTION_BATTERY_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/settingsstock/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/settingsstock/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0756

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;

    #getter for: Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
