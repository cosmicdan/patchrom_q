.class public Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# static fields
.field private static final OPTIONS_MENU_DELETE:I = 0x1


# instance fields
.field private mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 5

    iget-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0801ac

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "InputMethod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated input manager "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_0

    const-string v1, "is"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "is not"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0b085d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f04009d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-virtual {v0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    new-instance v2, Lcom/android/settingsstock/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/preference/PreferenceActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "InputMethod"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause input manager "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_2

    const-string v1, "is"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "is not"

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settingsstock/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    return-void
.end method
