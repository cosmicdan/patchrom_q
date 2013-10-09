.class Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$3;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$3;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "InstalledAppDetails"

    const-string v1, "app not found dialog "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$3;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settingsstock/applications/InstalledAppDetails;

    move-result-object v0

    #calls: Lcom/android/settingsstock/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->access$800(Lcom/android/settingsstock/applications/InstalledAppDetails;ZZ)V

    return-void
.end method
