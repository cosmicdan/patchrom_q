.class Lcom/android/settingsstock/RadioInfo$3;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/RadioInfo;->updatePingState()V
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

    iput-object p1, p0, Lcom/android/settingsstock/RadioInfo$3;->this$0:Lcom/android/settingsstock/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$3;->this$0:Lcom/android/settingsstock/RadioInfo;

    #getter for: Lcom/android/settingsstock/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$2400(Lcom/android/settingsstock/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/RadioInfo$3;->this$0:Lcom/android/settingsstock/RadioInfo;

    #getter for: Lcom/android/settingsstock/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settingsstock/RadioInfo;->access$2300(Lcom/android/settingsstock/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$3;->this$0:Lcom/android/settingsstock/RadioInfo;

    #getter for: Lcom/android/settingsstock/RadioInfo;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$2600(Lcom/android/settingsstock/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/RadioInfo$3;->this$0:Lcom/android/settingsstock/RadioInfo;

    #getter for: Lcom/android/settingsstock/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settingsstock/RadioInfo;->access$2500(Lcom/android/settingsstock/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$3;->this$0:Lcom/android/settingsstock/RadioInfo;

    #getter for: Lcom/android/settingsstock/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$2800(Lcom/android/settingsstock/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/RadioInfo$3;->this$0:Lcom/android/settingsstock/RadioInfo;

    #getter for: Lcom/android/settingsstock/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settingsstock/RadioInfo;->access$2700(Lcom/android/settingsstock/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
