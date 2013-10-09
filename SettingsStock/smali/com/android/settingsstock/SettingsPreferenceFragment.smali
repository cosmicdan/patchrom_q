.class public Lcom/android/settingsstock/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingsstock/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# static fields
.field private static final MENU_HELP:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SettingsPreferenceFragment"


# instance fields
.field private mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/SettingsPreferenceFragment;)Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settingsstock/SettingsPreferenceFragment;Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public final finishFragment()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settingsstock/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settingsstock/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public isDialogShowing(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v2

    if-eq v2, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v2}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0x65

    const v3, 0x7f0b092e

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method protected setCancelable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->access$002(Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settingsstock/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const v3, 0x7f0b0394

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
