.class Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    #getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractScheduledService;->runOneIteration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    #getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->notifyFailed(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;->this$1:Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    #getter for: Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractScheduledService;->access$200()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
