.class Lcom/android/settingsstock/DataUsageSummary$4;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v8, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "DataUsage"

    const-string v9, "Receive Intent :ACTION_SIM_INDICATOR_STATE_CHANGED "

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "slotId"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v8, "state"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive notification: state of sim slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v5, :cond_0

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-object v9, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v9}, Lcom/android/settingsstock/DataUsageSummary;->access$200(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->access$102(Lcom/android/settingsstock/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSavedCurrentTab "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/settingsstock/DataUsageSummary;->access$100(Lcom/android/settingsstock/DataUsageSummary;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateGeminiSimStatus()V
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$300(Lcom/android/settingsstock/DataUsageSummary;)V

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateBody()V
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$400(Lcom/android/settingsstock/DataUsageSummary;)V

    :cond_1
    return-void

    :cond_2
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "DataUsage"

    const-string v9, "Receive Intent : ACTION_AIRPLANE_MODE_CHANGED : "

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-object v9, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-virtual {v9}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settingsstock/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v9

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mIsAirplaneModeOn:Z
    invoke-static {v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->access$902(Lcom/android/settingsstock/DataUsageSummary;Z)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const-string v8, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "DataUsage"

    const-string v9, "Receive Intent : ACTION_POLICYMGR_CREATED,create policy when not exist"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$1000(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/net/NetworkPolicyEditor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->read()V

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$1100(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v8, v10}, Lcom/android/settingsstock/DataUsageSummary;->access$800(Lcom/android/settingsstock/DataUsageSummary;Z)V

    goto :goto_0

    :cond_4
    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    const-class v8, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v8, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneConstants$DataState;

    :goto_1
    const-string v8, "simId"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v8, :cond_6

    invoke-static {}, Lcom/android/settingsstock/DataUsageSummary;->access$1200()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$1300(Lcom/android/settingsstock/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x7d1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v12}, Lcom/android/settingsstock/DataUsageSummary;->access$1202(Z)Z

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$1400(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$1100(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v8, v10}, Lcom/android/settingsstock/DataUsageSummary;->access$800(Lcom/android/settingsstock/DataUsageSummary;Z)V

    :cond_5
    const-string v8, "DataUsage"

    const-string v9, "attach over"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v8, :cond_0

    invoke-static {}, Lcom/android/settingsstock/DataUsageSummary;->access$1200()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$1300(Lcom/android/settingsstock/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x7d0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v12}, Lcom/android/settingsstock/DataUsageSummary;->access$1202(Z)Z

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$1400(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$1100(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v8, v10}, Lcom/android/settingsstock/DataUsageSummary;->access$800(Lcom/android/settingsstock/DataUsageSummary;Z)V

    :cond_7
    const-string v8, "DataUsage"

    const-string v9, "detach over"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_1

    :cond_9
    const-string v8, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "DataUsage"

    const-string v9, "Receive TelephonyIntents : ACTION_SIM_INFO_UPDATE"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-object v9, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v9}, Lcom/android/settingsstock/DataUsageSummary;->access$200(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->access$102(Lcom/android/settingsstock/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateGeminiSimStatus()V
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$300(Lcom/android/settingsstock/DataUsageSummary;)V

    const-string v8, "sim1"

    iget-object v9, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settingsstock/DataUsageSummary;->access$100(Lcom/android/settingsstock/DataUsageSummary;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-boolean v8, v8, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim1Tab:Z

    if-eqz v8, :cond_b

    :cond_a
    const-string v8, "sim2"

    iget-object v9, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settingsstock/DataUsageSummary;->access$100(Lcom/android/settingsstock/DataUsageSummary;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-boolean v8, v8, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim2Tab:Z

    if-nez v8, :cond_c

    :cond_b
    const-string v8, "DataUsage"

    const-string v9, "set mSavedCurrentTab null"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    const/4 v9, 0x0

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->access$102(Lcom/android/settingsstock/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    :cond_c
    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateTabs()V
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$1500(Lcom/android/settingsstock/DataUsageSummary;)V

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary$4;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateBody()V
    invoke-static {v8}, Lcom/android/settingsstock/DataUsageSummary;->access$400(Lcom/android/settingsstock/DataUsageSummary;)V

    goto/16 :goto_0
.end method
