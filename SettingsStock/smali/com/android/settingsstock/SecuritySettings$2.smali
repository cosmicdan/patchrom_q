.class Lcom/android/settingsstock/SecuritySettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/SecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #calls: Lcom/android/settingsstock/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$100(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settingsstock/ChooseLockSettingsHelper;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$200(Lcom/android/settingsstock/SecuritySettings;)Lcom/android/settingsstock/ChooseLockSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$300(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$300(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$400(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$400(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$500(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$500(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$600(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$600(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    invoke-virtual {v3}, Lcom/android/settingsstock/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "show_password"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    const-string v3, "SecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyStore.State on receiver:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$700(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settingsstock/SecuritySettings$2;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settingsstock/SecuritySettings;->access$700(Lcom/android/settingsstock/SecuritySettings;)Landroid/preference/Preference;

    move-result-object v3

    sget-object v6, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v2, v6, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_1
.end method
