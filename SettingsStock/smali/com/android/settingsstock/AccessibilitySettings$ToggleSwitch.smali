.class public Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;
.super Landroid/widget/Switch;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleSwitch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    return-void
.end method
