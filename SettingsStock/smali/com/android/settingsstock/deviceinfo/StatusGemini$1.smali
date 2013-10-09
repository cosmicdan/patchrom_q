.class Lcom/android/settingsstock/deviceinfo/StatusGemini$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/deviceinfo/StatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/deviceinfo/StatusGemini;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "level"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    #getter for: Lcom/android/settingsstock/deviceinfo/StatusGemini;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->access$000(Lcom/android/settingsstock/deviceinfo/StatusGemini;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    const v8, 0x7f0b00b1

    new-array v9, v12, [Ljava/lang/Object;

    mul-int/lit8 v10, v1, 0x64

    div-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v6, "plugged"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v6, "status"

    invoke-virtual {p2, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    const v7, 0x7f0b02a9

    invoke-virtual {v6, v7}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-lez v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    if-ne v2, v12, :cond_2

    const v6, 0x7f0b02aa

    :goto_0
    invoke-virtual {v8, v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    #getter for: Lcom/android/settingsstock/deviceinfo/StatusGemini;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->access$100(Lcom/android/settingsstock/deviceinfo/StatusGemini;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const v6, 0x7f0b02ab

    goto :goto_0

    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    const v7, 0x7f0b02ad

    invoke-virtual {v6, v7}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    const v7, 0x7f0b02ae

    invoke-virtual {v6, v7}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    const v7, 0x7f0b02af

    invoke-virtual {v6, v7}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StatusGemini$1;->this$0:Lcom/android/settingsstock/deviceinfo/StatusGemini;

    const v7, 0x7f0b02a8

    invoke-virtual {v6, v7}, Lcom/android/settingsstock/deviceinfo/StatusGemini;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
