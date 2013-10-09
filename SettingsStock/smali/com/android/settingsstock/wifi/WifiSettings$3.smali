.class Lcom/android/settingsstock/wifi/WifiSettings$3;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/wifi/WifiSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wifi/WifiSettings;

.field final synthetic val$b:Landroid/widget/ImageButton;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiSettings$3;->this$0:Lcom/android/settingsstock/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settingsstock/wifi/WifiSettings$3;->val$inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/settingsstock/wifi/WifiSettings$3;->val$b:Landroid/widget/ImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings$3;->this$0:Lcom/android/settingsstock/wifi/WifiSettings;

    #getter for: Lcom/android/settingsstock/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WifiSettings;->access$200(Lcom/android/settingsstock/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiSettings$3;->val$inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiSettings$3;->val$b:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x7f100005

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    new-instance v1, Lcom/android/settingsstock/wifi/WifiSettings$3$1;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/wifi/WifiSettings$3$1;-><init>(Lcom/android/settingsstock/wifi/WifiSettings$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method
