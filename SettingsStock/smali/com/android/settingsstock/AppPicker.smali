.class public Lcom/android/settingsstock/AppPicker;
.super Landroid/app/ListActivity;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/AppPicker$AppListAdapter;,
        Lcom/android/settingsstock/AppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingsstock/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settingsstock/AppPicker$AppListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingsstock/AppPicker$1;

    invoke-direct {v0}, Lcom/android/settingsstock/AppPicker$1;-><init>()V

    sput-object v0, Lcom/android/settingsstock/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settingsstock/AppPicker$AppListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settingsstock/AppPicker$AppListAdapter;-><init>(Lcom/android/settingsstock/AppPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingsstock/AppPicker;->mAdapter:Lcom/android/settingsstock/AppPicker$AppListAdapter;

    iget-object v0, p0, Lcom/android/settingsstock/AppPicker;->mAdapter:Lcom/android/settingsstock/AppPicker$AppListAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/AppPicker$AppListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/AppPicker;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/AppPicker;->mAdapter:Lcom/android/settingsstock/AppPicker$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/AppPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v2, p0, Lcom/android/settingsstock/AppPicker;->mAdapter:Lcom/android/settingsstock/AppPicker$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settingsstock/AppPicker$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/AppPicker$MyApplicationInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/android/settingsstock/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settingsstock/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settingsstock/AppPicker;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AppPicker;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    return-void
.end method
