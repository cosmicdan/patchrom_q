.class public Lcom/android/settingsstock/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
.implements Lcom/android/settingsstock/DialogCreatable;


# static fields
.field private static final DLG_SHOW_GLOBAL_WARNING:I = 0x1

.field private static final SAVE_TARGET_LOCALE:Ljava/lang/String; = "locale"

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field private mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    invoke-virtual {p0, p0}, Lcom/android/settingsstock/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/LocalePicker;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Locale;

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b092b

    new-instance v2, Lcom/android/settingsstock/LocalePicker$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settingsstock/LocalePicker$1;-><init>(Lcom/android/settingsstock/LocalePicker;I)V

    invoke-static {v0, v1, v2}, Lcom/android/settingsstock/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/settingsstock/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/LocalePicker;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    invoke-static {p1}, Lcom/android/settingsstock/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settingsstock/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settingsstock/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settingsstock/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
