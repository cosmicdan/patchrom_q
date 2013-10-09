.class Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$8;
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

    iput-object p1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$8;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$8;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settingsstock/applications/InstalledAppDetails;

    move-result-object v0

    const/4 v1, 0x0

    #calls: Lcom/android/settingsstock/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->access$1300(Lcom/android/settingsstock/applications/InstalledAppDetails;Z)V

    return-void
.end method
