.class Lcom/android/settingsstock/applications/InstalledAppDetails$4;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/applications/InstalledAppDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$4;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "InstalledAppDetails"

    const-string v1, "dynamic swap, update the UI about SD card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$4;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails;

    #calls: Lcom/android/settingsstock/applications/InstalledAppDetails;->refeshUi2SD()V
    invoke-static {v0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->access$1600(Lcom/android/settingsstock/applications/InstalledAppDetails;)V

    return-void
.end method
