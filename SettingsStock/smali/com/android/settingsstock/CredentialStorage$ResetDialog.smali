.class Lcom/android/settingsstock/CredentialStorage$ResetDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/android/settingsstock/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/CredentialStorage;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settingsstock/CredentialStorage$ResetDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/settingsstock/CredentialStorage;->access$300()Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07e6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/CredentialStorage;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/CredentialStorage;Lcom/android/settingsstock/CredentialStorage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/CredentialStorage$ResetDialog;-><init>(Lcom/android/settingsstock/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {v3}, Lcom/android/settingsstock/CredentialStorage;->access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-boolean v0, p0, Lcom/android/settingsstock/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/settingsstock/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    new-instance v0, Lcom/android/settingsstock/CredentialStorage$ResetKeyStoreAndKeyChain;

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$ResetDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    invoke-direct {v0, v1, v3}, Lcom/android/settingsstock/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settingsstock/CredentialStorage;Lcom/android/settingsstock/CredentialStorage$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/CredentialStorage$ResetDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settingsstock/CredentialStorage;->finish()V

    goto :goto_0
.end method
