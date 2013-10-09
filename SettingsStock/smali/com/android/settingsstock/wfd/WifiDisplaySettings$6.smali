.class Lcom/android/settingsstock/wfd/WifiDisplaySettings$6;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string v0, "WifiDisplaySettings"

    const-string v1, "ContentObserver, onChange()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    #calls: Lcom/android/settingsstock/wfd/WifiDisplaySettings;->update()V
    invoke-static {v0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->access$500(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)V

    return-void
.end method
