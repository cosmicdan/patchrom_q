.class public Lcom/android/settingsstock/SetFullBackupPassword;
.super Landroid/app/Activity;
.source "SetFullBackupPassword.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SetFullBackupPassword"


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mButtonListener:Landroid/view/View$OnClickListener;

.field mCancel:Landroid/widget/Button;

.field mConfirmNewPw:Landroid/widget/TextView;

.field mCurrentPw:Landroid/widget/TextView;

.field mNewPw:Landroid/widget/TextView;

.field mSet:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settingsstock/SetFullBackupPassword$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/SetFullBackupPassword$1;-><init>(Lcom/android/settingsstock/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SetFullBackupPassword"

    const-string v2, "Unable to communicate with backup manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mBackupManager:Landroid/app/backup/IBackupManager;

    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/SetFullBackupPassword;->setContentView(I)V

    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    const v0, 0x7f080171

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingsstock/SetFullBackupPassword;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
