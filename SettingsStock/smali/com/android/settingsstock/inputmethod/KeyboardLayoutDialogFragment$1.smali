.class Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment$1;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment;

    #calls: Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment;->onKeyboardLayoutClicked(I)V
    invoke-static {v0, p2}, Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment;->access$000(Lcom/android/settingsstock/inputmethod/KeyboardLayoutDialogFragment;I)V

    return-void
.end method
