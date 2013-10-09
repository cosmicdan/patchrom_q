.class public Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# static fields
.field private static final KEY_DIALOG_ID:Ljava/lang/String; = "key_dialog_id"

.field private static final KEY_PARENT_FRAGMENT_ID:Ljava/lang/String; = "key_parent_fragment_id"


# instance fields
.field private mDialogId:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingsstock/DialogCreatable;I)V
    .locals 3

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput p2, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    const-string v1, "key_dialog_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    const-string v1, "key_parent_fragment_id"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/settingsstock/DialogCreatable;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_parent_fragment_id must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/settingsstock/DialogCreatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/settingsstock/SettingsPreferenceFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settingsstock/SettingsPreferenceFragment;

    #setter for: Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v1, p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->access$202(Lcom/android/settingsstock/SettingsPreferenceFragment;Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settingsstock/DialogCreatable;

    iget v2, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {v1, v2}, Lcom/android/settingsstock/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settingsstock/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settingsstock/SettingsPreferenceFragment;

    #getter for: Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->access$200(Lcom/android/settingsstock/SettingsPreferenceFragment;)Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settingsstock/SettingsPreferenceFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/settingsstock/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0, v1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->access$202(Lcom/android/settingsstock/SettingsPreferenceFragment;Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settingsstock/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settingsstock/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDialogShowing()V

    :cond_0
    return-void
.end method
