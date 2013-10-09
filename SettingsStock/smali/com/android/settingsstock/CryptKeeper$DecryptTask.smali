.class Lcom/android/settingsstock/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/CryptKeeper;Lcom/android/settingsstock/CryptKeeper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/CryptKeeper$DecryptTask;-><init>(Lcom/android/settingsstock/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    iget-object v2, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    #calls: Lcom/android/settingsstock/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/android/settingsstock/CryptKeeper;->access$000(Lcom/android/settingsstock/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    const/16 v5, 0x1e

    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failedAttempts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    const-class v3, Lcom/android/settingsstock/CryptKeeper$FadeToBlack;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    invoke-virtual {v2}, Lcom/android/settingsstock/CryptKeeper;->finish()V

    iget-object v2, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    invoke-virtual {v2, v0}, Lcom/android/settingsstock/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    #setter for: Lcom/android/settingsstock/CryptKeeper;->mCooldown:I
    invoke-static {v2, v5}, Lcom/android/settingsstock/CryptKeeper;->access$102(Lcom/android/settingsstock/CryptKeeper;I)I

    iget-object v2, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    #calls: Lcom/android/settingsstock/CryptKeeper;->cooldown()V
    invoke-static {v2}, Lcom/android/settingsstock/CryptKeeper;->access$200(Lcom/android/settingsstock/CryptKeeper;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b085c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->this$0:Lcom/android/settingsstock/CryptKeeper;

    #getter for: Lcom/android/settingsstock/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settingsstock/CryptKeeper;->access$300(Lcom/android/settingsstock/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
