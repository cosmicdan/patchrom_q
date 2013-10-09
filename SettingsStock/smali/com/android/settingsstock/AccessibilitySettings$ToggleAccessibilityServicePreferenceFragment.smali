.class public Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleAccessibilityServicePreferenceFragment"
.end annotation


# static fields
.field private static final DIALOG_ID_DISABLE_WARNING:I = 0x2

.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1


# instance fields
.field private mComponentName:Ljava/lang/String;

.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private final mSettingsContentObserver:Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    iget v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_2
    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :pswitch_0
    iput v4, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    iget-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settingsstock/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-super {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    #calls: Lcom/android/settingsstock/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    invoke-static {v9}, Lcom/android/settingsstock/AccessibilitySettings;->access$700(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3a

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settingsstock/AccessibilitySettings;->access$800()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    if-gt v1, v9, :cond_3

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_6

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    if-eqz v0, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_7
    const/4 v9, 0x0

    goto :goto_4
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    const-string v3, "settings_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings_component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v2, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    :cond_0
    const-string v3, "enable_warning_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    const-string v3, "enable_warning_message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    const-string v3, "disable_warning_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    const-string v3, "disable_warning_message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    const-string v3, "service_component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/AccessibilitySettings$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-super {p0}, Lcom/android/settingsstock/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onResume()V

    return-void
.end method
