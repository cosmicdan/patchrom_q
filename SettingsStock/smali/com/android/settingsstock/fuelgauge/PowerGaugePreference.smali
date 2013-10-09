.class public Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;
.super Landroid/preference/Preference;
.source "PowerGaugePreference.java"


# instance fields
.field private mInfo:Lcom/android/settingsstock/fuelgauge/BatterySipper;

.field private mProgress:I

.field private mProgressText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settingsstock/fuelgauge/BatterySipper;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040007

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->setLayoutResource(I)V

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settingsstock/fuelgauge/BatterySipper;

    return-void

    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method getInfo()Lcom/android/settingsstock/fuelgauge/BatterySipper;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settingsstock/fuelgauge/BatterySipper;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->mProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPercent(DD)V
    .locals 6

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->mProgress:I

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b090b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerGaugePreference;->notifyChanged()V

    return-void
.end method
