.class Lcom/android/settingsstock/applications/InstalledAppDetails$1;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$1;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$1;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "InstalledAppDetails"

    const-string v1, "handle message : clear user data "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$1;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails;

    #calls: Lcom/android/settingsstock/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->access$000(Lcom/android/settingsstock/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "InstalledAppDetails"

    const-string v1, "handle message : clear ucache "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$1;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails;

    #getter for: Lcom/android/settingsstock/applications/InstalledAppDetails;->mState:Lcom/android/settingsstock/applications/ApplicationsState;
    invoke-static {v0}, Lcom/android/settingsstock/applications/InstalledAppDetails;->access$200(Lcom/android/settingsstock/applications/InstalledAppDetails;)Lcom/android/settingsstock/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$1;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails;

    #getter for: Lcom/android/settingsstock/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->access$100(Lcom/android/settingsstock/applications/InstalledAppDetails;)Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "InstalledAppDetails"

    const-string v1, "handle message : package move "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/applications/InstalledAppDetails$1;->this$0:Lcom/android/settingsstock/applications/InstalledAppDetails;

    #calls: Lcom/android/settingsstock/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settingsstock/applications/InstalledAppDetails;->access$300(Lcom/android/settingsstock/applications/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
