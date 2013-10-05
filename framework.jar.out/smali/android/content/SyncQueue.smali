.class public Landroid/content/SyncQueue;
.super Ljava/lang/Object;
.source "SyncQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mOperationsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncStorageEngine:Landroid/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Landroid/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iput-object p2, p0, Landroid/content/SyncQueue;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    return-void
.end method

.method private add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z
    .locals 13

    const/4 v12, 0x1

    iget-object v11, p1, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncOperation;

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    iget-boolean v0, v8, Landroid/content/SyncOperation;->expedited:Z

    iget-boolean v1, p1, Landroid/content/SyncOperation;->expedited:Z

    if-ne v0, v1, :cond_1

    iget-wide v0, v8, Landroid/content/SyncOperation;->earliestRunTime:J

    iget-wide v2, p1, Landroid/content/SyncOperation;->earliestRunTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-wide v0, v8, Landroid/content/SyncOperation;->earliestRunTime:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_0

    iput-wide v9, v8, Landroid/content/SyncOperation;->earliestRunTime:J

    const/4 v7, 0x1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-boolean v0, p1, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v0, :cond_0

    iput-boolean v12, v8, Landroid/content/SyncOperation;->expedited:Z

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    iput-object p2, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    iget-object v0, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    if-nez v0, :cond_4

    new-instance p2, Landroid/content/SyncStorageEngine$PendingOperation;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->userId:I

    iget v3, p1, Landroid/content/SyncOperation;->syncSource:I

    iget-object v4, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-boolean v6, p1, Landroid/content/SyncOperation;->expedited:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v0, p2}, Landroid/content/SyncStorageEngine;->insertIntoPending(Landroid/content/SyncStorageEngine$PendingOperation;)Landroid/content/SyncStorageEngine$PendingOperation;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error adding pending sync operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p2, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    :cond_4
    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v7, v12

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/content/SyncOperation;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v0

    return v0
.end method

.method public addPendingOperations(I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v0, v17

    iget v3, v0, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    move/from16 v0, p1

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SyncQueue;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v18

    if-nez v18, :cond_1

    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing sync adapter info for authority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/SyncOperation;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v8, 0x0

    if-eqz v15, :cond_2

    iget-object v10, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, v17

    iget v14, v0, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v13, v14, v0}, Landroid/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, v18

    iget-object v14, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v14, Landroid/content/SyncAdapterType;

    invoke-virtual {v14}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, v17

    iget-boolean v3, v0, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v3, v2, Landroid/content/SyncOperation;->expedited:Z

    move-object/from16 v0, v17

    iput-object v0, v2, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    goto/16 :goto_0

    :cond_2
    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v4, "SyncQueue: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " operation(s)\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncOperation;

    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Landroid/content/SyncOperation;->effectiveRunTime:J

    cmp-long v4, v4, v1

    if-gtz v4, :cond_0

    const-string v4, "READY"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, " - "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/SyncOperation;->dump(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-wide v4, v3, Landroid/content/SyncOperation;->effectiveRunTime:J

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getOperations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/SyncOperation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V
    .locals 3

    iget-object v2, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    iget-object v2, v1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/SyncOperation;->userId:I

    if-ne v2, p2, :cond_0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Landroid/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/content/SyncOperation;->updateEffectiveRunTime()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDelayUntilTimeChanged(Landroid/accounts/Account;Ljava/lang/String;J)V
    .locals 3

    iget-object v2, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    iget-object v2, v1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-wide p3, v1, Landroid/content/SyncOperation;->delayUntil:J

    invoke-virtual {v1}, Landroid/content/SyncOperation;->updateEffectiveRunTime()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 6

    iget-object v4, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncOperation;

    if-eqz p1, :cond_1

    iget-object v4, v3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v4, v3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    iget v4, v3, Landroid/content/SyncOperation;->userId:I

    if-ne p2, v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v4, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v5, v3, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v4, v5}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to find pending row for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method public remove(Landroid/content/SyncOperation;)V
    .locals 4

    iget-object v2, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v3, v1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v2, v3}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find pending row for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    iget v3, v1, Landroid/content/SyncOperation;->userId:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    invoke-virtual {p0, v1}, Landroid/content/SyncQueue;->remove(Landroid/content/SyncOperation;)V

    goto :goto_1

    :cond_2
    return-void
.end method
