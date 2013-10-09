.class Lcom/android/settingsstock/BatteryInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/BatteryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mLevel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$100(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "level"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mScale:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$200(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "scale"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mVoltage:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$300(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "voltage"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v7, 0x7f0b02a1

    invoke-virtual {v6, v7}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mTemperature:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$500(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const-string v7, "temperature"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    #calls: Lcom/android/settingsstock/BatteryInfo;->tenthsToFixedString(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/settingsstock/BatteryInfo;->access$400(Lcom/android/settingsstock/BatteryInfo;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v7, 0x7f0b02a3

    invoke-virtual {v6, v7}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mTechnology:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$600(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "technology"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mStatus:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$700(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    invoke-virtual {v5}, Lcom/android/settingsstock/BatteryInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/settingsstock/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    packed-switch v3, :pswitch_data_0

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$800(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v6, 0x7f0b02b5

    invoke-virtual {v5, v6}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v4, "health"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v5, 0x7f0b02b7

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mHealth:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$900(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$800(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v6, 0x7f0b02b0

    invoke-virtual {v5, v6}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$800(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v6, 0x7f0b02b1

    invoke-virtual {v5, v6}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$800(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v6, 0x7f0b02b2

    invoke-virtual {v5, v6}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$800(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v6, 0x7f0b02b3

    invoke-virtual {v5, v6}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    #getter for: Lcom/android/settingsstock/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settingsstock/BatteryInfo;->access$800(Lcom/android/settingsstock/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v6, 0x7f0b02b4

    invoke-virtual {v5, v6}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v5, 0x7f0b02b8

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v5, 0x7f0b02b9

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v5, 0x7f0b02ba

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x6

    if-ne v1, v4, :cond_5

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v5, 0x7f0b02bb

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x7

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v5, 0x7f0b02bc

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/settingsstock/BatteryInfo$2;->this$0:Lcom/android/settingsstock/BatteryInfo;

    const v5, 0x7f0b02b6

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
