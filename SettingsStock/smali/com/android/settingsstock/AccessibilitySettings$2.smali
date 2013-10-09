.class Lcom/android/settingsstock/AccessibilitySettings$2;
.super Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;
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
.method constructor <init>(Lcom/android/settingsstock/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/AccessibilitySettings$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #calls: Lcom/android/settingsstock/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settingsstock/AccessibilitySettings;->access$100(Lcom/android/settingsstock/AccessibilitySettings;)V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #calls: Lcom/android/settingsstock/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settingsstock/AccessibilitySettings;->access$200(Lcom/android/settingsstock/AccessibilitySettings;)V

    return-void
.end method
