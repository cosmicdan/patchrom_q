.class Lcom/android/settingsstock/wfd/WifiDisplaySettings$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiDisplaySettings"

    const-string v3, "onReceive(): DisplayManager.ACTION_WIFI_DISPLAY_STATUS_CHANGED"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplayStatus;

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v2, v1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->access$002(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    #calls: Lcom/android/settingsstock/wfd/WifiDisplaySettings;->applyState()V
    invoke-static {v2}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->access$400(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)V

    :cond_0
    return-void
.end method
