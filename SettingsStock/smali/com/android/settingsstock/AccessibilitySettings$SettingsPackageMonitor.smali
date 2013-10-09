.class Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/AccessibilitySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/AccessibilitySettings;Lcom/android/settingsstock/AccessibilitySettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settingsstock/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settingsstock/AccessibilitySettings;->access$500(Lcom/android/settingsstock/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settingsstock/AccessibilitySettings;->access$500(Lcom/android/settingsstock/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settingsstock/AccessibilitySettings;->access$500(Lcom/android/settingsstock/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settingsstock/AccessibilitySettings;->access$500(Lcom/android/settingsstock/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settingsstock/AccessibilitySettings;->access$500(Lcom/android/settingsstock/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settingsstock/AccessibilitySettings;->access$500(Lcom/android/settingsstock/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settingsstock/AccessibilitySettings;->access$500(Lcom/android/settingsstock/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settingsstock/AccessibilitySettings;->access$500(Lcom/android/settingsstock/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
