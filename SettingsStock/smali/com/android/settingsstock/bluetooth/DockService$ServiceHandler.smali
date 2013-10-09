.class final Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;
.super Landroid/os/Handler;
.source "DockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/DockService;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/bluetooth/DockService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/settingsstock/bluetooth/DockService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settingsstock/bluetooth/DockService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settingsstock/bluetooth/DockService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DockService$ServiceHandler;->this$0:Lcom/android/settingsstock/bluetooth/DockService;

    #calls: Lcom/android/settingsstock/bluetooth/DockService;->processMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settingsstock/bluetooth/DockService;->access$100(Lcom/android/settingsstock/bluetooth/DockService;Landroid/os/Message;)V

    return-void
.end method
