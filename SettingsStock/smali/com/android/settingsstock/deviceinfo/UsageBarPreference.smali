.class public Lcom/android/settingsstock/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# instance fields
.field private mChart:Lcom/android/settingsstock/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingsstock/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settingsstock/deviceinfo/PercentageBarChart;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settingsstock/deviceinfo/PercentageBarChart;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settingsstock/deviceinfo/PercentageBarChart;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public addEntry(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/settingsstock/deviceinfo/PercentageBarChart;->createEntry(IFI)Lcom/android/settingsstock/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public commit()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settingsstock/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settingsstock/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/PercentageBarChart;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f08010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settingsstock/deviceinfo/PercentageBarChart;

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mChart:Lcom/android/settingsstock/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    return-void
.end method
