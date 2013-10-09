.class Lcom/android/settingsstock/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary$13;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/DataUsageSummary$AppItem;

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary$13;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mUidDetailProvider:Lcom/android/settingsstock/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/settingsstock/DataUsageSummary;->access$3000(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/net/UidDetailProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary$13;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    #getter for: Lcom/android/settingsstock/DataUsageSummary;->mUidDetailProvider:Lcom/android/settingsstock/net/UidDetailProvider;
    invoke-static {v3}, Lcom/android/settingsstock/DataUsageSummary;->access$3000(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/net/UidDetailProvider;

    move-result-object v3

    iget v4, v0, Lcom/android/settingsstock/DataUsageSummary$AppItem;->key:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/settingsstock/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingsstock/net/UidDetail;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary$13;->this$0:Lcom/android/settingsstock/DataUsageSummary;

    iget-object v4, v2, Lcom/android/settingsstock/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v3, v0, v4}, Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settingsstock/DataUsageSummary;Lcom/android/settingsstock/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
