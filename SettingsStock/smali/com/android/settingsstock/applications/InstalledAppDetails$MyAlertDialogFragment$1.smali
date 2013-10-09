.class Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$1;
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

    iput-object p1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$1;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "InstalledAppDetails"

    const-string v1, "click clear data dialog OK button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$1;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settingsstock/applications/InstalledAppDetails;

    move-result-object v0

    #calls: Lcom/android/settingsstock/applications/InstalledAppDetails;->initiateClearUserData()V
    invoke-static {v0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->access$600(Lcom/android/settingsstock/applications/InstalledAppDetails;)V

    return-void
.end method
