.class Lcom/android/settingsstock/NsdEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NsdEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/NsdEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/NsdEnabler;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/NsdEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/NsdEnabler$1;->this$0:Lcom/android/settingsstock/NsdEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.nsd.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/NsdEnabler$1;->this$0:Lcom/android/settingsstock/NsdEnabler;

    const-string v2, "nsd_state"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/settingsstock/NsdEnabler;->handleNsdStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/settingsstock/NsdEnabler;->access$000(Lcom/android/settingsstock/NsdEnabler;I)V

    :cond_0
    return-void
.end method
