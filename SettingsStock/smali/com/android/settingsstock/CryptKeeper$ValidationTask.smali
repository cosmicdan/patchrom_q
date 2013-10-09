.class Lcom/android/settingsstock/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/CryptKeeper$ValidationTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/CryptKeeper;Lcom/android/settingsstock/CryptKeeper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/CryptKeeper$ValidationTask;-><init>(Lcom/android/settingsstock/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/settingsstock/CryptKeeper$ValidationTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    #calls: Lcom/android/settingsstock/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v3}, Lcom/android/settingsstock/CryptKeeper;->access$000(Lcom/android/settingsstock/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    :try_start_0
    const-string v3, "CryptKeeper"

    const-string v5, "Validating encryption state."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v3, "CryptKeeper"

    const-string v5, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    if-nez v2, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "CryptKeeper"

    const-string v5, "Unable to get encryption state properly"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeper$ValidationTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    #setter for: Lcom/android/settingsstock/CryptKeeper;->mValidationComplete:Z
    invoke-static {v0, v2}, Lcom/android/settingsstock/CryptKeeper;->access$402(Lcom/android/settingsstock/CryptKeeper;Z)Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CryptKeeper"

    const-string v1, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeper$ValidationTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    #setter for: Lcom/android/settingsstock/CryptKeeper;->mEncryptionGoneBad:Z
    invoke-static {v0, v2}, Lcom/android/settingsstock/CryptKeeper;->access$502(Lcom/android/settingsstock/CryptKeeper;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeper$ValidationTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    #calls: Lcom/android/settingsstock/CryptKeeper;->setupUi()V
    invoke-static {v0}, Lcom/android/settingsstock/CryptKeeper;->access$600(Lcom/android/settingsstock/CryptKeeper;)V

    return-void

    :cond_0
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
