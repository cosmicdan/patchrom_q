.class Lcom/android/settingsstock/AccessibilitySettings$1;
.super Landroid/os/Handler;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/AccessibilitySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/AccessibilitySettings$1;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$1;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #calls: Lcom/android/settingsstock/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settingsstock/AccessibilitySettings;->access$100(Lcom/android/settingsstock/AccessibilitySettings;)V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$1;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #calls: Lcom/android/settingsstock/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settingsstock/AccessibilitySettings;->access$200(Lcom/android/settingsstock/AccessibilitySettings;)V

    return-void
.end method
