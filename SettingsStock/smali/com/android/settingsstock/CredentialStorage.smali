.class public final Lcom/android/settingsstock/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/CredentialStorage$1;,
        Lcom/android/settingsstock/CredentialStorage$UnlockDialog;,
        Lcom/android/settingsstock/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/settingsstock/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settingsstock/CredentialStorage$ResetDialog;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL:Ljava/lang/String; = "com.android.credentials.INSTALL"

.field public static final ACTION_RESET:Ljava/lang/String; = "com.android.credentials.RESET"

.field public static final ACTION_UNLOCK:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field private static final CONFIRM_KEY_GUARD_REQUEST:I = 0x1

.field static final MIN_PASSWORD_QUALITY:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "CredentialStorage"

.field private static sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

.field private static sResetDialog:Landroid/app/AlertDialog;

.field private static sUnlockDialog:Landroid/app/AlertDialog;


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingsstock/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    sput-object v0, Lcom/android/settingsstock/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    sput-object v0, Lcom/android/settingsstock/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settingsstock/CredentialStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method static synthetic access$300()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/settingsstock/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$600()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/settingsstock/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/CredentialStorage;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settingsstock/CredentialStorage;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$800()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/settingsstock/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settingsstock/CredentialStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    const/high16 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/settingsstock/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x1

    const v4, 0x7f0b07e1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0b07e2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingsstock/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settingsstock/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settingsstock/CredentialStorage;Lcom/android/settingsstock/CredentialStorage$1;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private handleUnlockOrInstall()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "CredentialStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CredentialStorage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyGuardQuality "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settingsstock/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settingsstock/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settingsstock/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v3}, Lcom/android/settingsstock/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settingsstock/CredentialStorage;Lcom/android/settingsstock/CredentialStorage$1;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settingsstock/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/settingsstock/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v3}, Lcom/android/settingsstock/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settingsstock/CredentialStorage;Lcom/android/settingsstock/CredentialStorage$1;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/CredentialStorage;->installIfAvailable()V

    invoke-virtual {p0}, Lcom/android/settingsstock/CredentialStorage;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 10

    iget-object v7, p0, Lcom/android/settingsstock/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settingsstock/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settingsstock/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const-string v7, "user_private_key_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "user_private_key_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "user_private_key_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v5, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "CredentialStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "user_certificate_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "user_certificate_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "user_certificate_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v7, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v4, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "CredentialStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v7, "ca_certificates_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ca_certificates_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "ca_certificates_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v7, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v2, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "CredentialStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v7, "wapi_user_certificate_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "wapi_user_certificate_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "wapi_user_certificate_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v2, :cond_4

    iget-object v7, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v2, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "CredentialStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v7, "wapi_as_user_certificate_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "wapi_as_user_certificate_name"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "wapi_as_user_certificate_data"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7, v2, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "CredentialStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/CredentialStorage;->setResult(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "CredentialStorage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settingsstock/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sput-object v2, Lcom/android/settingsstock/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    :cond_0
    sget-object v0, Lcom/android/settingsstock/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sput-object v2, Lcom/android/settingsstock/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    :cond_1
    sget-object v0, Lcom/android/settingsstock/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sput-object v2, Lcom/android/settingsstock/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CredentialStorage"

    const-string v3, "Cannot install to CredentialStorage as non-primary user"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/CredentialStorage;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CredentialStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/settingsstock/CredentialStorage$ResetDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settingsstock/CredentialStorage$ResetDialog;-><init>(Lcom/android/settingsstock/CredentialStorage;Lcom/android/settingsstock/CredentialStorage$1;)V

    goto :goto_0

    :cond_1
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settingsstock/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0
.end method
