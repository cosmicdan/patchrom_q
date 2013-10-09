.class public Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    }
.end annotation


# static fields
.field public static final EXTRA_LOCALE:Ljava/lang/String; = "locale"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final EXTRA_WORD:Ljava/lang/String; = "word"

.field private static final FREQUENCY_FOR_USER_DICTIONARY_ADDS:I = 0xfa

.field private static final HAS_WORD_PROJECTION:[Ljava/lang/String; = null

.field private static final HAS_WORD_SELECTION_ALL_LOCALES:Ljava/lang/String; = "word=? AND locale is null"

.field private static final HAS_WORD_SELECTION_ONE_LOCALE:Ljava/lang/String; = "word=? AND locale=?"

.field public static final MODE_EDIT:I = 0x0

.field public static final MODE_INSERT:I = 0x1


# instance fields
.field private mLocale:Ljava/lang/String;

.field private final mMode:I

.field private final mOldShortcut:Ljava/lang/String;

.field private final mOldWord:Ljava/lang/String;

.field private final mShortcutEditText:Landroid/widget/EditText;

.field private final mWordEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "word"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v3, 0x7f0801a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    const v3, 0x7f0801aa

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    const-string v3, "word"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const-string v3, "shortcut"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v3, "mode"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mMode:I

    const-string v3, "word"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    const-string v3, "shortcut"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    const-string v3, "locale"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0
.end method

.method private static addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-direct {v0, p0, p2}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private hasWord(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const-string v3, "word=? AND locale is null"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    if-nez v6, :cond_2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v8

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->HAS_WORD_PROJECTION:[Ljava/lang/String;

    const-string v3, "word=? AND locale=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    iget-object v9, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    aput-object v9, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    move v0, v7

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v0

    goto :goto_1

    :cond_4
    move v0, v8

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method apply(Landroid/content/Context;)V
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v5, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcom/android/settingsstock/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_0
    iget-object v5, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-nez v5, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->hasWord(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1, v4, v2}, Lcom/android/settingsstock/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v1, v0, v2}, Lcom/android/settingsstock/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xfa

    iget-object v7, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_2
    invoke-static {p1, v5, v6, v0, v4}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settingsstock/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    goto :goto_2
.end method

.method delete(Landroid/content/Context;)V
    .locals 3

    iget v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mOldWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mOldShortcut:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settingsstock/UserDictionarySettings;->deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settingsstock/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-static {p1, v3, v5}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1, v3, v4}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v3, v1}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, ""

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    invoke-static {p1, v3, v5}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->addLocaleDisplayNameToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_2
    new-instance v5, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method saveStateIntoBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "word"

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mWordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v0, "shortcut"

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mShortcutEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method updateLocale(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->mLocale:Ljava/lang/String;

    return-void
.end method
