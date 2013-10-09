.class public Lcom/android/settingsstock/net/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# static fields
.field public static final ENABLE_SPLIT_POLICIES:Z


# instance fields
.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method private static buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, -0x1

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v2, -0x1

    const-string v3, "UTC"

    const/4 v12, 0x0

    :goto_0
    new-instance v0, Landroid/net/NetworkPolicy;

    const/4 v13, 0x1

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0

    :cond_0
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    iget v2, v14, Landroid/text/format/Time;->monthDay:I

    iget-object v3, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v12, 0x1

    goto :goto_0
.end method

.method private cleanPolicyActive()V
    .locals 3

    iget-object v2, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/net/NetworkPolicy;->active:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private forceMobilePolicyCombined()Z
    .locals 6

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_1

    :cond_1
    return v1
.end method

.method private setMobilePolicySplitInternal(Ljava/lang/String;Z)Z
    .locals 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v25

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-eqz v20, :cond_2

    if-nez p2, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v2

    if-gez v2, :cond_1

    move-object/from16 v24, v21

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v24

    iget-object v5, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object/from16 v0, v24

    iget-boolean v14, v0, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, v24

    iget-boolean v15, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v24, v22

    goto :goto_1

    :cond_2
    if-nez v20, :cond_3

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v4, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v23

    iget v6, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v23

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    move/from16 v16, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move/from16 v17, v0

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v6, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v23

    iget v8, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v23

    iget-object v9, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v23

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move/from16 v19, v0

    move-object/from16 v7, v25

    invoke-direct/range {v6 .. v19}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3

    iget-object v2, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicyCycleDay(Landroid/net/NetworkTemplate;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    return v0
.end method

.method public getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    return-wide v0
.end method

.method public getPolicyMetered(Landroid/net/NetworkTemplate;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->metered:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    return-wide v0
.end method

.method public hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/net/NetworkPolicy;->active:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMobilePolicySplit(Ljava/lang/String;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read()V
    .locals 10

    const-wide/16 v8, -0x1

    iget-object v6, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v6}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v4

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    iget-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    iput-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const/4 v3, 0x1

    :cond_0
    iget-wide v6, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    iput-wide v8, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    const/4 v3, 0x1

    :cond_1
    iget-object v6, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->forceMobilePolicyCombined()Z

    move-result v6

    or-int/2addr v3, v6

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->writeAsync()V

    :cond_3
    return-void
.end method

.method public setMobilePolicySplit(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->writeAsync()V

    :cond_0
    return-void
.end method

.method public setPolicyActive(Landroid/net/NetworkPolicy;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->cleanPolicyActive()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/net/NetworkPolicy;->active:Z

    return-void
.end method

.method public setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->cleanPolicyActive()V

    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    iput-object p3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->active:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    invoke-virtual {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->cleanPolicyActive()V

    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->active:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public setPolicyMetered(Landroid/net/NetworkTemplate;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    if-eqz p2, :cond_3

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    iput-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v3, v1, Landroid/net/NetworkPolicy;->inferred:Z

    iget-object v2, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->writeAsync()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v2, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v2, :cond_0

    iput-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v3, v1, Landroid/net/NetworkPolicy;->inferred:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v2, :cond_0

    iput-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    iput-boolean v3, v1, Landroid/net/NetworkPolicy;->inferred:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->cleanPolicyActive()V

    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->active:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public write([Landroid/net/NetworkPolicy;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method public writeAsync()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingsstock/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    new-instance v1, Lcom/android/settingsstock/net/NetworkPolicyEditor$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settingsstock/net/NetworkPolicyEditor$1;-><init>(Lcom/android/settingsstock/net/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/net/NetworkPolicyEditor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
