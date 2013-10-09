.class Lcom/android/settingsstock/wifi/WifiStatusTest$2;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/wifi/WifiStatusTest;
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

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiStatusTest$2;->this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiStatusTest$2;->this$0:Lcom/android/settingsstock/wifi/WifiStatusTest;

    #calls: Lcom/android/settingsstock/wifi/WifiStatusTest;->updatePingState()V
    invoke-static {v0}, Lcom/android/settingsstock/wifi/WifiStatusTest;->access$500(Lcom/android/settingsstock/wifi/WifiStatusTest;)V

    return-void
.end method
