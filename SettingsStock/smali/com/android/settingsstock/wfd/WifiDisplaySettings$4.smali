.class Lcom/android/settingsstock/wfd/WifiDisplaySettings$4;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z
    invoke-static {v0, p2}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->access$202(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Z)Z

    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    #calls: Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->access$300(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
