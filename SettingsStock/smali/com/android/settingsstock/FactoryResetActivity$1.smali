.class Lcom/android/settingsstock/FactoryResetActivity$1;
.super Ljava/lang/Object;
.source "FactoryResetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/FactoryResetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/FactoryResetActivity;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/FactoryResetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/FactoryResetActivity$1;->this$0:Lcom/android/settingsstock/FactoryResetActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/FactoryResetActivity$1;->this$0:Lcom/android/settingsstock/FactoryResetActivity;

    iget-object v0, v0, Lcom/android/settingsstock/FactoryResetActivity;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/FactoryResetActivity$1;->this$0:Lcom/android/settingsstock/FactoryResetActivity;

    iget-object v0, v0, Lcom/android/settingsstock/FactoryResetActivity;->mExternalStorage:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/FactoryResetActivity$1;->this$0:Lcom/android/settingsstock/FactoryResetActivity;

    iget-object v0, v0, Lcom/android/settingsstock/FactoryResetActivity;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    sput-boolean v1, Lcom/android/settingsstock/FactoryResetActivity;->erase_sd:Z

    goto :goto_0
.end method
