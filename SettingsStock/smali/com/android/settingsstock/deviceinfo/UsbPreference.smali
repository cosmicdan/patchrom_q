.class public Lcom/android/settingsstock/deviceinfo/UsbPreference;
.super Landroid/preference/Preference;
.source "UsbPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BUTTON_ID:I = 0x7f080133

.field private static final SUMMARY_ID:I = 0x7f080132

.field private static final TAG:Ljava/lang/String; = "UsbPreference"

.field private static final TITLE_ID:I = 0x7f080131


# instance fields
.field private mChecked:Z

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceSummary:Landroid/widget/TextView;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mSummaryValue:Ljava/lang/CharSequence;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mChecked:Z

    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setLayoutResource(I)V

    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "UsbPreference"

    const-string v2, "getview"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    const-string v1, "UsbPreference"

    const-string v2, "preference.onClick return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->callChangeListener(Ljava/lang/Object;)Z

    const-string v1, "UsbPreference"

    const-string v2, "preference.onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    const-string v1, "UsbPreference"

    const-string v2, "button.onClick return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->callChangeListener(Ljava/lang/Object;)Z

    const-string v1, "UsbPreference"

    const-string v2, "button.onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    const-string v1, "UsbPreference"

    const-string v2, "setChecked return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mChecked:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mChecked:Z

    if-eq v1, p1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mChecked:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
