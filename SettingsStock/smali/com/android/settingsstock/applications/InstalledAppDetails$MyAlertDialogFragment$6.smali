.class Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$6;
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

    iput-object p1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string v0, "InstalledAppDetails"

    const-string v1, "disable app dialog "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settingsstock/applications/InstalledAppDetails;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment$6;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/settingsstock/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settingsstock/applications/InstalledAppDetails;

    move-result-object v2

    #getter for: Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;
    invoke-static {v2}, Lcom/android/settingsstock/applications/InstalledAppDetails;->access$100(Lcom/android/settingsstock/applications/InstalledAppDetails;)Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settingsstock/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
