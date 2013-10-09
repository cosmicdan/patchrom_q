.class Lcom/android/settingsstock/ApnEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/ApnEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    const-string v3, "state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/android/settingsstock/ApnEditor;->mAirplaneModeEnabled:Z
    invoke-static {v2, v3}, Lcom/android/settingsstock/ApnEditor;->access$002(Lcom/android/settingsstock/ApnEditor;Z)Z

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mAirplaneModeEnabled:Z
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$000(Lcom/android/settingsstock/ApnEditor;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ssr"

    const-string v3, "receiver: ACTION_AIRPLANE_MODE_CHANGED in ApnEditor"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #calls: Lcom/android/settingsstock/ApnEditor;->radioOffExit()V
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$100(Lcom/android/settingsstock/ApnEditor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.android.mms.transaction.START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ssr"

    const-string v3, "receiver: TRANSACTION_START in ApnEditor"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #setter for: Lcom/android/settingsstock/ApnEditor;->mNotInMmsTransaction:Z
    invoke-static {v2, v4}, Lcom/android/settingsstock/ApnEditor;->access$202(Lcom/android/settingsstock/ApnEditor;Z)Z

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    invoke-virtual {v2}, Lcom/android/settingsstock/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v2, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ssr"

    const-string v3, "receiver: TRANSACTION_STOP in ApnEditor"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #setter for: Lcom/android/settingsstock/ApnEditor;->mNotInMmsTransaction:Z
    invoke-static {v2, v5}, Lcom/android/settingsstock/ApnEditor;->access$202(Lcom/android/settingsstock/ApnEditor;Z)Z

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #calls: Lcom/android/settingsstock/ApnEditor;->setScreenEnabledStatus()V
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$300(Lcom/android/settingsstock/ApnEditor;)V

    const-string v2, "tethering"

    iget-object v3, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;
    invoke-static {v3}, Lcom/android/settingsstock/ApnEditor;->access$400(Lcom/android/settingsstock/ApnEditor;)Lcom/android/settingsstock/ApnTypePreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingsstock/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    iget-object v2, v2, Lcom/android/settingsstock/ApnEditor;->mExt:Lcom/android/settingsstock/ext/IApnEditorExt;

    iget-object v3, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;
    invoke-static {v3}, Lcom/android/settingsstock/ApnEditor;->access$400(Lcom/android/settingsstock/ApnEditor;)Lcom/android/settingsstock/ApnTypePreference;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settingsstock/ext/IApnEditorExt;->setPreferenceState(Landroid/preference/DialogPreference;)V

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    const-string v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I
    invoke-static {v2, v3}, Lcom/android/settingsstock/ApnEditor;->access$502(Lcom/android/settingsstock/ApnEditor;I)I

    invoke-static {}, Lcom/android/settingsstock/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiver, new dual sim mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I
    invoke-static {v4}, Lcom/android/settingsstock/ApnEditor;->access$500(Lcom/android/settingsstock/ApnEditor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$500(Lcom/android/settingsstock/ApnEditor;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #calls: Lcom/android/settingsstock/ApnEditor;->radioOffExit()V
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$100(Lcom/android/settingsstock/ApnEditor;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$700(Lcom/android/settingsstock/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$700(Lcom/android/settingsstock/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #calls: Lcom/android/settingsstock/ApnEditor;->setSpn()V
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$800(Lcom/android/settingsstock/ApnEditor;)V

    :cond_6
    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mIMSI:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$900(Lcom/android/settingsstock/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mIMSI:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$900(Lcom/android/settingsstock/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #calls: Lcom/android/settingsstock/ApnEditor;->setIMSI()V
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$1000(Lcom/android/settingsstock/ApnEditor;)V

    :cond_8
    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mPnn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$1100(Lcom/android/settingsstock/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mPnn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$1100(Lcom/android/settingsstock/ApnEditor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #calls: Lcom/android/settingsstock/ApnEditor;->setPnn()V
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$1200(Lcom/android/settingsstock/ApnEditor;)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/settingsstock/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity finished"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    invoke-virtual {v2}, Lcom/android/settingsstock/ApnEditor;->finish()V

    goto/16 :goto_0

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iget-object v3, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mSimId:I
    invoke-static {v3}, Lcom/android/settingsstock/ApnEditor;->access$1300(Lcom/android/settingsstock/ApnEditor;)I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/android/settingsstock/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Activity finished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$1;->this$0:Lcom/android/settingsstock/ApnEditor;

    invoke-virtual {v2}, Lcom/android/settingsstock/ApnEditor;->finish()V

    goto/16 :goto_0
.end method
