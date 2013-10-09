.class Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$900(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, v3, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1000(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, v2, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1
.end method
