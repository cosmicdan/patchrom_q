.class public Lcom/android/settingsstock/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleScreenMagnificationPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settingsstock/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/android/settingsstock/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
