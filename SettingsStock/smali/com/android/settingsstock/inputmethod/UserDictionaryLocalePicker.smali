.class public Lcom/android/settingsstock/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "UserDictionaryLocalePicker.java"


# direct methods
.method public constructor <init>(Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/inputmethod/UserDictionaryLocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    return-void
.end method
