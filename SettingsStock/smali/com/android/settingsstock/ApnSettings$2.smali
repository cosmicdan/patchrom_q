.class Lcom/android/settingsstock/ApnSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/ApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    #calls: Lcom/android/settingsstock/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/settingsstock/ApnSettings;->access$100(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    sget-object v4, Lcom/android/settingsstock/ApnSettings$5;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v4, "simId"

    const/4 v5, 0x2

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get sim Id in broadcast received is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget v4, v4, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-object v5, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget v5, v5, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    #calls: Lcom/android/settingsstock/ApnSettings;->fillList(I)V
    invoke-static {v4, v5}, Lcom/android/settingsstock/ApnSettings;->access$000(Lcom/android/settingsstock/ApnSettings;I)V

    goto :goto_0

    :cond_1
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AIRPLANE_MODE state changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-boolean v8, v8, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-virtual {v6}, Lcom/android/settingsstock/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-boolean v7, v7, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #getter for: Lcom/android/settingsstock/ApnSettings;->mDualSimMode:I
    invoke-static {v7}, Lcom/android/settingsstock/ApnSettings;->access$200(Lcom/android/settingsstock/ApnSettings;)I

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v4, "ApnSettings"

    const-string v5, "receiver: ACTION_SIM_STATE_CHANGED in ApnSettings"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-object v4, v4, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-object v4, v4, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #getter for: Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$300(Lcom/android/settingsstock/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #getter for: Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$300(Lcom/android/settingsstock/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #getter for: Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$400(Lcom/android/settingsstock/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #getter for: Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$400(Lcom/android/settingsstock/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #getter for: Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$500(Lcom/android/settingsstock/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #getter for: Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$500(Lcom/android/settingsstock/ApnSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_7
    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #calls: Lcom/android/settingsstock/ApnSettings;->initSimState()V
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$600(Lcom/android/settingsstock/ApnSettings;)V

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #calls: Lcom/android/settingsstock/ApnSettings;->setSpn()V
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$700(Lcom/android/settingsstock/ApnSettings;)V

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #calls: Lcom/android/settingsstock/ApnSettings;->setIMSI()V
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$800(Lcom/android/settingsstock/ApnSettings;)V

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #calls: Lcom/android/settingsstock/ApnSettings;->setPnn()V
    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$900(Lcom/android/settingsstock/ApnSettings;)V

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-boolean v4, v4, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-object v5, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget v5, v5, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    #calls: Lcom/android/settingsstock/ApnSettings;->fillList(I)V
    invoke-static {v4, v5}, Lcom/android/settingsstock/ApnSettings;->access$000(Lcom/android/settingsstock/ApnSettings;I)V

    goto/16 :goto_0

    :cond_8
    const-string v6, "com.android.mms.transaction.START"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v4, "ApnSettings"

    const-string v6, "receiver: TRANSACTION_START in ApnSettings"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/settingsstock/ApnSettings;->access$1002(Z)Z

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settingsstock/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    const-string v6, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v5, "ApnSettings"

    const-string v6, "receiver: TRANSACTION_STOP in ApnSettings"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/settingsstock/ApnSettings;->access$1002(Z)Z

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settingsstock/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-virtual {v5}, Lcom/android/settingsstock/ApnSettings;->getScreenEnableState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v6, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    const-string v7, "mode"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    #setter for: Lcom/android/settingsstock/ApnSettings;->mDualSimMode:I
    invoke-static {v6, v7}, Lcom/android/settingsstock/ApnSettings;->access$202(Lcom/android/settingsstock/ApnSettings;I)I

    const-string v6, "ApnSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receiver, new dual sim mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #getter for: Lcom/android/settingsstock/ApnSettings;->mDualSimMode:I
    invoke-static {v8}, Lcom/android/settingsstock/ApnSettings;->access$200(Lcom/android/settingsstock/ApnSettings;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-virtual {v6}, Lcom/android/settingsstock/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-boolean v7, v7, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    #getter for: Lcom/android/settingsstock/ApnSettings;->mDualSimMode:I
    invoke-static {v7}, Lcom/android/settingsstock/ApnSettings;->access$200(Lcom/android/settingsstock/ApnSettings;)I

    move-result v7

    if-eqz v7, :cond_b

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_2

    :cond_c
    const-string v6, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_d

    const-string v4, "ApnSettings"

    const-string v5, "Activity finished"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settingsstock/ApnSettings;->finish()V

    goto/16 :goto_0

    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v4, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v5, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget v5, v5, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    if-eq v4, v5, :cond_0

    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Activity finished"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings$2;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-virtual {v4}, Lcom/android/settingsstock/ApnSettings;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
