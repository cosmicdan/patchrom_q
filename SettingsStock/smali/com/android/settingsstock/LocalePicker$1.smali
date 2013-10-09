.class Lcom/android/settingsstock/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/LocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/LocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settingsstock/LocalePicker;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/LocalePicker$1;->this$0:Lcom/android/settingsstock/LocalePicker;

    iput p2, p0, Lcom/android/settingsstock/LocalePicker$1;->val$dialogId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker$1;->this$0:Lcom/android/settingsstock/LocalePicker;

    iget v1, p0, Lcom/android/settingsstock/LocalePicker$1;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/LocalePicker;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker$1;->this$0:Lcom/android/settingsstock/LocalePicker;

    invoke-virtual {v0}, Lcom/android/settingsstock/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    iget-object v0, p0, Lcom/android/settingsstock/LocalePicker$1;->this$0:Lcom/android/settingsstock/LocalePicker;

    #getter for: Lcom/android/settingsstock/LocalePicker;->mTargetLocale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/settingsstock/LocalePicker;->access$000(Lcom/android/settingsstock/LocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method
