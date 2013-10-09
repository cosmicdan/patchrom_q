.class Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$600(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, v2, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v2, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    return-void
.end method
