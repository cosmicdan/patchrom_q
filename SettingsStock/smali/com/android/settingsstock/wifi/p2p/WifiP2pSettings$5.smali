.class Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings$5;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings$5;->this$0:Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/settingsstock/wifi/p2p/WifiP2pPersistentGroup;
    invoke-static {v2}, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings;)Lcom/android/settingsstock/wifi/p2p/WifiP2pPersistentGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingsstock/wifi/p2p/WifiP2pPersistentGroup;->getNetworkId()I

    move-result v2

    new-instance v3, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings$5$1;

    invoke-direct {v3, p0}, Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings$5$1;-><init>(Lcom/android/settingsstock/wifi/p2p/WifiP2pSettings$5;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method
