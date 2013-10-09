.class Lcom/android/settingsstock/RadioInfo$16;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/RadioInfo$16;->this$0:Lcom/android/settingsstock/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "phone"

    const-string v4, "toggle %s: currently %s"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const-string v1, "persist.radio.ramdump"

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/android/settingsstock/RadioInfo$16;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->isSmsOverImsEnabled()Z
    invoke-static {v1}, Lcom/android/settingsstock/RadioInfo;->access$3600(Lcom/android/settingsstock/RadioInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    :goto_0
    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/RadioInfo$16;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->isLteRamDumpEnabled()Z
    invoke-static {v1}, Lcom/android/settingsstock/RadioInfo;->access$3800(Lcom/android/settingsstock/RadioInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    const-string v2, "persist.radio.ramdump"

    if-eqz v0, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/RadioInfo$16;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updateLteRamDumpState()V
    invoke-static {v1}, Lcom/android/settingsstock/RadioInfo;->access$3900(Lcom/android/settingsstock/RadioInfo;)V

    return-void

    :cond_0
    const-string v1, "off"

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const-string v1, "0"

    goto :goto_2
.end method
