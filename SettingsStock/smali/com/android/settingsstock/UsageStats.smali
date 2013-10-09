.class public Lcom/android/settingsstock/UsageStats;
.super Landroid/app/Activity;
.source "UsageStats.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/UsageStats$UsageStatsAdapter;,
        Lcom/android/settingsstock/UsageStats$AppViewHolder;,
        Lcom/android/settingsstock/UsageStats$UsageTimeComparator;,
        Lcom/android/settingsstock/UsageStats$LaunchCountComparator;,
        Lcom/android/settingsstock/UsageStats$AppNameComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsageStatsActivity"

.field private static final localLOGV:Z


# instance fields
.field private mAdapter:Lcom/android/settingsstock/UsageStats$UsageStatsAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTypeSpinner:Landroid/widget/Spinner;

.field private mUsageStatsService:Lcom/android/internal/app/IUsageStats;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/UsageStats;)Lcom/android/internal/app/IUsageStats;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/UsageStats;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/UsageStats;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/UsageStats;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/UsageStats;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/UsageStats;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/UsageStats;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    iget-object v0, p0, Lcom/android/settingsstock/UsageStats;->mUsageStatsService:Lcom/android/internal/app/IUsageStats;

    if-nez v0, :cond_0

    const-string v0, "UsageStatsActivity"

    const-string v1, "Failed to retrieve usagestats service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/UsageStats;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settingsstock/UsageStats;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settingsstock/UsageStats;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/UsageStats;->mPm:Landroid/content/pm/PackageManager;

    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/UsageStats;->setContentView(I)V

    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/UsageStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settingsstock/UsageStats;->mTypeSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settingsstock/UsageStats;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0801a2

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/UsageStats;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settingsstock/UsageStats;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/settingsstock/UsageStats$UsageStatsAdapter;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/UsageStats$UsageStatsAdapter;-><init>(Lcom/android/settingsstock/UsageStats;)V

    iput-object v0, p0, Lcom/android/settingsstock/UsageStats;->mAdapter:Lcom/android/settingsstock/UsageStats$UsageStatsAdapter;

    iget-object v0, p0, Lcom/android/settingsstock/UsageStats;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settingsstock/UsageStats;->mAdapter:Lcom/android/settingsstock/UsageStats$UsageStatsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingsstock/UsageStats;->mAdapter:Lcom/android/settingsstock/UsageStats$UsageStatsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settingsstock/UsageStats$UsageStatsAdapter;->sortList(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
