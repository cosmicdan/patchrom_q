.class Lcom/android/settingsstock/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settingsstock/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/wifi/WifiSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settingsstock/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/wifi/WifiSettings;Lcom/android/settingsstock/wifi/WifiSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settingsstock/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settingsstock/wifi/WifiSettings;

    #getter for: Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WifiSettings;->access$200(Lcom/android/settingsstock/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->mRetry:I

    :cond_0
    const-wide/16 v1, 0x1770

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iput v3, p0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->mRetry:I

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->this$0:Lcom/android/settingsstock/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0b043d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->mRetry:I

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->removeMessages(I)V

    return-void
.end method

.method resume()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
