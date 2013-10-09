.class Lcom/android/settingsstock/DisplaySettings$3;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DisplaySettings$3;->this$0:Lcom/android/settingsstock/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DisplaySettings"

    const-string v1, "package changed, update list"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings$3;->this$0:Lcom/android/settingsstock/DisplaySettings;

    #calls: Lcom/android/settingsstock/DisplaySettings;->updateLandscapeList()V
    invoke-static {v0}, Lcom/android/settingsstock/DisplaySettings;->access$200(Lcom/android/settingsstock/DisplaySettings;)V

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings$3;->this$0:Lcom/android/settingsstock/DisplaySettings;

    #calls: Lcom/android/settingsstock/DisplaySettings;->updateLockScreenStyle()V
    invoke-static {v0}, Lcom/android/settingsstock/DisplaySettings;->access$300(Lcom/android/settingsstock/DisplaySettings;)V

    return-void
.end method
