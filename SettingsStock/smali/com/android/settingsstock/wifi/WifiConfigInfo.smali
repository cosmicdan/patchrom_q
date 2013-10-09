.class public Lcom/android/settingsstock/wifi/WifiConfigInfo;
.super Landroid/app/Activity;
.source "WifiConfigInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConfigInfo"


# instance fields
.field private mConfigList:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiConfigInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiConfigInfo;->setContentView(I)V

    const v0, 0x7f0801ec

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wifi/WifiConfigInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
