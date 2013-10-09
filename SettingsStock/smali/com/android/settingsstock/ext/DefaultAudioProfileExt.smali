.class public Lcom/android/settingsstock/ext/DefaultAudioProfileExt;
.super Landroid/content/ContextWrapper;
.source "DefaultAudioProfileExt.java"

# interfaces
.implements Lcom/android/settingsstock/ext/IAudioProfileExt;


# instance fields
.field private mCheckboxButton:Landroid/widget/RadioButton;

.field private mContext:Landroid/app/Fragment;

.field private mHasMoreRingtone:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:Landroid/view/View;

.field private mSummary:Landroid/widget/TextView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mSummary:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mImageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mHasMoreRingtone:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public createView(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    return-object v0
.end method

.method public getPrefImageView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPrefRadioButton(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mCheckboxButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getPreferenceSummary(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPreferenceTitle(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isPrefEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setRingerVolume(Landroid/media/AudioManager;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setRingtonePickerParams(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.extra.ringtone.SHOW_MORE_RINGTONES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/ext/DefaultAudioProfileExt;->mHasMoreRingtone:Z

    return-void
.end method

.method public setVolume(Landroid/media/AudioManager;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
