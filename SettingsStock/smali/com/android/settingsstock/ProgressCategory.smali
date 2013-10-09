.class public Lcom/android/settingsstock/ProgressCategory;
.super Lcom/android/settingsstock/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private final mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/ProgressCategory;->mProgress:Z

    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ProgressCategory;->setLayoutResource(I)V

    iput p3, p0, Lcom/android/settingsstock/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settingsstock/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    const v4, 0x7f080113

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingsstock/ProgressCategory;->getPreferenceCount()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ProgressCategory;->getPreferenceCount()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v4, v5, :cond_3

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/settingsstock/ProgressCategory;->mProgress:Z

    if-eqz v4, :cond_4

    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/android/settingsstock/ProgressCategory;->mProgress:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_5

    :cond_1
    iget-boolean v3, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean v2, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundAdded:Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v4, 0x8

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v4, :cond_6

    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v5, 0x7f040068

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v4, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v5, p0, Lcom/android/settingsstock/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    :cond_6
    iget-object v2, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    iput-boolean v3, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_2
.end method

.method public setNoDeviceFoundAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/ProgressCategory;->mNoDeviceFoundAdded:Z

    return-void
.end method

.method public setProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/ProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/ProgressCategory;->notifyChanged()V

    return-void
.end method
