.class Lcom/android/settingsstock/ApnEditor$4;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/ApnEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/ApnEditor$4;->this$0:Lcom/android/settingsstock/ApnEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor$4;->this$0:Lcom/android/settingsstock/ApnEditor;

    const/4 v1, 0x0

    #calls: Lcom/android/settingsstock/ApnEditor;->validateAndSave(Z)Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/ApnEditor;->access$2000(Lcom/android/settingsstock/ApnEditor;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor$4;->this$0:Lcom/android/settingsstock/ApnEditor;

    invoke-virtual {v0}, Lcom/android/settingsstock/ApnEditor;->finish()V

    :cond_0
    return-void
.end method
