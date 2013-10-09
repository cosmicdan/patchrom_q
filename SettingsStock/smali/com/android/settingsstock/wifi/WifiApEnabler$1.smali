.class Lcom/android/settingsstock/wifi/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/wifi/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/WifiApEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiApEnabler$1;->this$0:Lcom/android/settingsstock/wifi/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler$1;->this$0:Lcom/android/settingsstock/wifi/WifiApEnabler;

    const-string v5, "wifi_state"

    const/16 v6, 0xe

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/android/settingsstock/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V
    invoke-static {v4, v5}, Lcom/android/settingsstock/wifi/WifiApEnabler;->access$000(Lcom/android/settingsstock/wifi/WifiApEnabler;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler$1;->this$0:Lcom/android/settingsstock/wifi/WifiApEnabler;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    #calls: Lcom/android/settingsstock/wifi/WifiApEnabler;->updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/settingsstock/wifi/WifiApEnabler;->access$100(Lcom/android/settingsstock/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiApEnabler$1;->this$0:Lcom/android/settingsstock/wifi/WifiApEnabler;

    #calls: Lcom/android/settingsstock/wifi/WifiApEnabler;->enableWifiCheckBox()V
    invoke-static {v4}, Lcom/android/settingsstock/wifi/WifiApEnabler;->access$200(Lcom/android/settingsstock/wifi/WifiApEnabler;)V

    goto :goto_0
.end method
