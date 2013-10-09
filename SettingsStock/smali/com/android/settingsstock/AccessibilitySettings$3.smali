.class Lcom/android/settingsstock/AccessibilitySettings$3;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
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

    iput-object p1, p0, Lcom/android/settingsstock/AccessibilitySettings$3;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$3;->this$0:Lcom/android/settingsstock/AccessibilitySettings;

    #calls: Lcom/android/settingsstock/AccessibilitySettings;->updateLockScreenRotationCheckbox()V
    invoke-static {v0}, Lcom/android/settingsstock/AccessibilitySettings;->access$300(Lcom/android/settingsstock/AccessibilitySettings;)V

    return-void
.end method
