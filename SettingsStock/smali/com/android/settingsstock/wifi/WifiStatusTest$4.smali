.class Lcom/android/settingsstock/wifi/WifiStatusTest$4;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/wifi/WifiStatusTest;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/WifiStatusTest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiStatusTest$4;->this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiStatusTest$4;->this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;

    #getter for: Lcom/android/settingsstock/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settingsstock/wifi/WifiStatusTest;->access$1800(Lcom/android/settingsstock/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiStatusTest$4;->this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;

    #getter for: Lcom/android/settingsstock/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WifiStatusTest;->access$1700(Lcom/android/settingsstock/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiStatusTest$4;->this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;

    #getter for: Lcom/android/settingsstock/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settingsstock/wifi/WifiStatusTest;->access$2000(Lcom/android/settingsstock/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiStatusTest$4;->this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;

    #getter for: Lcom/android/settingsstock/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WifiStatusTest;->access$1900(Lcom/android/settingsstock/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiStatusTest$4;->this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;

    #getter for: Lcom/android/settingsstock/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settingsstock/wifi/WifiStatusTest;->access$2200(Lcom/android/settingsstock/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiStatusTest$4;->this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;

    #getter for: Lcom/android/settingsstock/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WifiStatusTest;->access$2100(Lcom/android/settingsstock/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
