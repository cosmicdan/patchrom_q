.class Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;

    iget-object v3, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/settingsstock/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
