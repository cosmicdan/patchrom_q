.class final Lcom/google/common/collect/BstInOrderPath$1;
.super Ljava/lang/Object;
.source "BstInOrderPath.java"

# interfaces
.implements Lcom/google/common/collect/BstPathFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/BstInOrderPath;->inOrderFactory()Lcom/google/common/collect/BstPathFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/BstPathFactory",
        "<TN;",
        "Lcom/google/common/collect/BstInOrderPath",
        "<TN;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;",
            "Lcom/google/common/collect/BstSide;",
            ")",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;"
        }
    .end annotation

    #calls: Lcom/google/common/collect/BstInOrderPath;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;
    invoke-static {p1, p2}, Lcom/google/common/collect/BstInOrderPath;->access$000(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic extension(Lcom/google/common/collect/BstPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstPath;
    .locals 1

    check-cast p1, Lcom/google/common/collect/BstInOrderPath;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/BstInOrderPath$1;->extension(Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method

.method public initialPath(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstInOrderPath;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/collect/BstInOrderPath",
            "<TN;>;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Lcom/google/common/collect/BstInOrderPath;

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/google/common/collect/BstInOrderPath;-><init>(Lcom/google/common/collect/BstNode;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/BstInOrderPath;Lcom/google/common/collect/BstInOrderPath$1;)V

    return-object v0
.end method

.method public bridge synthetic initialPath(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstPath;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/BstInOrderPath$1;->initialPath(Lcom/google/common/collect/BstNode;)Lcom/google/common/collect/BstInOrderPath;

    move-result-object v0

    return-object v0
.end method
