.class Lcom/android/settingsstock/DataUsageSummary$8;
.super Landroid/os/Handler;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$8;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "DataUsage"

    const-string v1, "timer expired update switch enabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$8;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$1400(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$1202(Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
