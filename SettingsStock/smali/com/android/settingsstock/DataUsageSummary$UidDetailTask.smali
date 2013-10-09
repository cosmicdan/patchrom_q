.class Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settingsstock/net/UidDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/android/settingsstock/DataUsageSummary$AppItem;

.field private final mProvider:Lcom/android/settingsstock/net/UidDetailProvider;

.field private final mTarget:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/net/UidDetailProvider;Lcom/android/settingsstock/DataUsageSummary$AppItem;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->mProvider:Lcom/android/settingsstock/net/UidDetailProvider;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/DataUsageSummary$AppItem;

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->mItem:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    return-void
.end method

.method private static bindView(Lcom/android/settingsstock/net/UidDetail;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settingsstock/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static bindView(Lcom/android/settingsstock/net/UidDetailProvider;Lcom/android/settingsstock/DataUsageSummary$AppItem;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->cancel(Z)Z

    :cond_0
    iget v2, p1, Lcom/android/settingsstock/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p0, v2, v4}, Lcom/android/settingsstock/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingsstock/net/UidDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settingsstock/net/UidDetail;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;-><init>(Lcom/android/settingsstock/net/UidDetailProvider;Lcom/android/settingsstock/DataUsageSummary$AppItem;Landroid/view/View;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settingsstock/net/UidDetail;
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->mProvider:Lcom/android/settingsstock/net/UidDetailProvider;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->mItem:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    iget v1, v1, Lcom/android/settingsstock/DataUsageSummary$AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingsstock/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settingsstock/net/UidDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settingsstock/net/UidDetail;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settingsstock/net/UidDetail;Landroid/view/View;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingsstock/net/UidDetail;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->onPostExecute(Lcom/android/settingsstock/net/UidDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->mTarget:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settingsstock/net/UidDetail;Landroid/view/View;)V

    return-void
.end method
