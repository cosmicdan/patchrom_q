.class public Lcom/android/settingsstock/OwnerInfoSettings;
.super Landroid/app/Fragment;
.source "OwnerInfoSettings.java"


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mEditText:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_owner_info"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lock_screen_owner_info_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f0800e4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f0800e5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f0b037a

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settingsstock/OwnerInfoSettings$1;

    invoke-direct {v4, p0, v2}, Lcom/android/settingsstock/OwnerInfoSettings$1;-><init>(Lcom/android/settingsstock/OwnerInfoSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/OwnerInfoSettings;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 5

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/OwnerInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingsstock/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/OwnerInfoSettings;->saveToDb()V

    return-void
.end method

.method saveToDb()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
