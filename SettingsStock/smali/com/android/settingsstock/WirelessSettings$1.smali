.class Lcom/android/settingsstock/WirelessSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/WirelessSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v19, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v19, "mediatek.intent.action.USB_DATA_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "internet"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-class v19, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v20, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v19, "WirelessSettings"

    const-string v20, "receive USB_DATA_STATE"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v19, "WirelessSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "dataApnKey = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", state = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/settingsstock/WirelessSettings$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    const v20, 0x7f0b0288

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    const v20, 0x7f0b0289

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    const v20, 0x7f0b016c

    invoke-virtual/range {v19 .. v20}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_1
    const-string v19, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "connected"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$100(Lcom/android/settingsstock/WirelessSettings;)Landroid/net/ConnectivityManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$100(Lcom/android/settingsstock/WirelessSettings;)Landroid/net/ConnectivityManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v17

    move-object v4, v15

    array-length v9, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v12, v4, v8

    move-object/from16 v5, v17

    array-length v10, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_3

    aget-object v11, v5, v7

    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const/16 v18, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    :cond_4
    const-string v19, "WirelessSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onReceive: ACTION_USB_STATE usbConnected:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " usbTethered:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$000(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v20

    if-eqz v16, :cond_5

    if-nez v18, :cond_5

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    const/16 v19, 0x0

    goto :goto_3

    :cond_6
    const-string v19, "android.intent.action.SIM_INFO_UPDATE"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "WirelessSettings"

    const-string v20, "ACTION_SIM_INFO_UPDATE received"

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_0

    const-string v19, "WirelessSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sim card number is: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/WirelessSettings$1;->this$0:Lcom/android/settingsstock/WirelessSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settingsstock/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;
    invoke-static/range {v19 .. v19}, Lcom/android/settingsstock/WirelessSettings;->access$200(Lcom/android/settingsstock/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_7

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    const/16 v19, 0x0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
