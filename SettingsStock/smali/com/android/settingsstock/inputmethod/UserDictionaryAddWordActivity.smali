.class public Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordActivity;
.super Landroid/app/Activity;
.source "UserDictionaryAddWordActivity.java"


# static fields
.field public static final MODE_EDIT_ACTION:Ljava/lang/String; = "com.android.settingsstock.USER_DICTIONARY_EDIT"

.field public static final MODE_INSERT_ACTION:Ljava/lang/String; = "com.android.settingsstock.USER_DICTIONARY_INSERT"

.field private static final STATE_KEY_IS_OPEN:Ljava/lang/String; = "isOpen"


# instance fields
.field private mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f04009c

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.android.settingsstock.USER_DICTIONARY_EDIT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "mode"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v4, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    return-void

    :cond_1
    const-string v4, "com.android.settingsstock.USER_DICTIONARY_INSERT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordActivity;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0, p1}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->saveStateIntoBundle(Landroid/os/Bundle;)V

    return-void
.end method
