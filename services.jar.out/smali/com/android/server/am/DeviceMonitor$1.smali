.class Lcom/android/server/am/DeviceMonitor$1;
.super Ljava/lang/Thread;
.source "DeviceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/DeviceMonitor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DeviceMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/am/DeviceMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DeviceMonitor$1;->this$0:Lcom/android/server/am/DeviceMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/DeviceMonitor$1;->this$0:Lcom/android/server/am/DeviceMonitor;

    #calls: Lcom/android/server/am/DeviceMonitor;->monitor()V
    invoke-static {v0}, Lcom/android/server/am/DeviceMonitor;->access$000(Lcom/android/server/am/DeviceMonitor;)V

    return-void
.end method
