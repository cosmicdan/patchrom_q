.class Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/inputmethod/InputMethodPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/inputmethod/InputMethodPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodPreference;->mIsSystemIme:Z
    invoke-static {v0}, Lcom/android/settingsstock/inputmethod/InputMethodPreference;->access$000(Lcom/android/settingsstock/inputmethod/InputMethodPreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;

    invoke-virtual {v0, v2, v2}, Lcom/android/settingsstock/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Lcom/android/settingsstock/inputmethod/InputMethodPreference;->access$100(Lcom/android/settingsstock/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodPreference;

    #calls: Lcom/android/settingsstock/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settingsstock/inputmethod/InputMethodPreference;)V
    invoke-static {v0, v1, v2}, Lcom/android/settingsstock/inputmethod/InputMethodPreference;->access$200(Lcom/android/settingsstock/inputmethod/InputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settingsstock/inputmethod/InputMethodPreference;)V

    goto :goto_0
.end method
