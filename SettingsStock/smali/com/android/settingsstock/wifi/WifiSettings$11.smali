.class Lcom/android/settingsstock/wifi/WifiSettings$11;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/WifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiSettings$11;->this$0:Lcom/android/settingsstock/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings$11;->this$0:Lcom/android/settingsstock/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiSettings$11;->this$0:Lcom/android/settingsstock/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
