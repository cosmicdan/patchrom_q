.class Lcom/android/settingsstock/wifi/WifiConfigController$1;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/wifi/WifiConfigController;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/WifiConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiConfigController$1;->this$0:Lcom/android/settingsstock/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController$1;->this$0:Lcom/android/settingsstock/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    return-void
.end method
