.class Lcom/android/settingsstock/CredentialStorage$UnlockDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockDialog"
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;

.field private final mError:Landroid/widget/TextView;

.field private final mOldPassword:Landroid/widget/TextView;

.field private mUnlockConfirmed:Z

.field final synthetic this$0:Lcom/android/settingsstock/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/CredentialStorage;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v3, 0x7f04001d

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #getter for: Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settingsstock/CredentialStorage;->access$700(Lcom/android/settingsstock/CredentialStorage;)I

    move-result v3

    if-ne v3, v7, :cond_1

    invoke-virtual {p1}, Lcom/android/settingsstock/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settingsstock/CredentialStorage;->access$800()Landroid/app/AlertDialog;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b07e3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/CredentialStorage;->access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    invoke-static {}, Lcom/android/settingsstock/CredentialStorage;->access$800()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    #getter for: Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settingsstock/CredentialStorage;->access$700(Lcom/android/settingsstock/CredentialStorage;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/settingsstock/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    #getter for: Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settingsstock/CredentialStorage;->access$700(Lcom/android/settingsstock/CredentialStorage;)I

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-virtual {p1}, Lcom/android/settingsstock/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    const v3, 0x7f0b07ea

    new-array v4, v5, [Ljava/lang/Object;

    #getter for: Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I
    invoke-static {p1}, Lcom/android/settingsstock/CredentialStorage;->access$700(Lcom/android/settingsstock/CredentialStorage;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/android/settingsstock/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/CredentialStorage;Lcom/android/settingsstock/CredentialStorage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settingsstock/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingsstock/CredentialStorage;->access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-boolean v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mUnlockConfirmed:Z

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mError:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    #getter for: Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/settingsstock/CredentialStorage;->access$500(Lcom/android/settingsstock/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    #getter for: Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v1}, Lcom/android/settingsstock/CredentialStorage;->access$500(Lcom/android/settingsstock/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    #setter for: Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/settingsstock/CredentialStorage;->access$702(Lcom/android/settingsstock/CredentialStorage;I)I

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    const v2, 0x7f0b07ed

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    #calls: Lcom/android/settingsstock/CredentialStorage;->ensureKeyGuard()V
    invoke-static {v1}, Lcom/android/settingsstock/CredentialStorage;->access$900(Lcom/android/settingsstock/CredentialStorage;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    #setter for: Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v4}, Lcom/android/settingsstock/CredentialStorage;->access$702(Lcom/android/settingsstock/CredentialStorage;I)I

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    const v2, 0x7f0b07eb

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    #calls: Lcom/android/settingsstock/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/settingsstock/CredentialStorage;->access$1000(Lcom/android/settingsstock/CredentialStorage;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    add-int/lit8 v2, v0, -0xa

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I
    invoke-static {v1, v2}, Lcom/android/settingsstock/CredentialStorage;->access$702(Lcom/android/settingsstock/CredentialStorage;I)I

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    #calls: Lcom/android/settingsstock/CredentialStorage;->handleUnlockOrInstall()V
    invoke-static {v1}, Lcom/android/settingsstock/CredentialStorage;->access$1000(Lcom/android/settingsstock/CredentialStorage;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;->this$0:Lcom/android/settingsstock/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settingsstock/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
