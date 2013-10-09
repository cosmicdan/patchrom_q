.class Lcom/android/settingsstock/wifi/WifiApDialog$2;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/wifi/WifiApDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/WifiApDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiApDialog$2;->this$0:Lcom/android/settingsstock/wifi/WifiApDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApDialog$2;->this$0:Lcom/android/settingsstock/wifi/WifiApDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/settingsstock/wifi/WifiApDialog;->mChannelWidth:I
    invoke-static {v0, v1}, Lcom/android/settingsstock/wifi/WifiApDialog;->access$202(Lcom/android/settingsstock/wifi/WifiApDialog;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiApDialog$2;->this$0:Lcom/android/settingsstock/wifi/WifiApDialog;

    const/4 v1, 0x1

    #setter for: Lcom/android/settingsstock/wifi/WifiApDialog;->mChannelWidth:I
    invoke-static {v0, v1}, Lcom/android/settingsstock/wifi/WifiApDialog;->access$202(Lcom/android/settingsstock/wifi/WifiApDialog;I)I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
