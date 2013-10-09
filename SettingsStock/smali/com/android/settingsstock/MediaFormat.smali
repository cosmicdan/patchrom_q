.class public Lcom/android/settingsstock/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final MTP_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaFormat"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIsInternalSD:Z

.field private mIsUsbStorage:Z

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;

.field private mVolumePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mtp_transfer_file_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingsstock/MediaFormat;->MTP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settingsstock/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/MediaFormat$1;-><init>(Lcom/android/settingsstock/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settingsstock/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settingsstock/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/MediaFormat$2;-><init>(Lcom/android/settingsstock/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settingsstock/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/MediaFormat;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/MediaFormat;->getMtpStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/MediaFormat;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/MediaFormat;)Landroid/os/storage/StorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/MediaFormat;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mFinalView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b05c7

    invoke-direct {p0, v1}, Lcom/android/settingsstock/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const v2, 0x7f0b05c8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settingsstock/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/MediaFormat;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private establishInitialState()V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInitialView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b05c5

    invoke-direct {p0, v1}, Lcom/android/settingsstock/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v2, 0x7f0b05c6

    invoke-direct {p0, v2}, Lcom/android/settingsstock/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settingsstock/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/MediaFormat;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private getMtpPath()Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/MediaFormat;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/provider/MediaStore;->getMtpTransferFileUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/settingsstock/MediaFormat;->MTP_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    :cond_0
    const-string v0, "MediaFormat"

    const-string v1, "no record or more than one record"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "ERROR"

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private getMtpStatus()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/settingsstock/MediaFormat;->getMtpPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mtp transfer path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settingsstock/MediaFormat;->mVolumePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVolumeString(I)Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/android/settingsstock/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settingsstock/MediaFormat;->mIsInternalSD:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settingsstock/MediaFormat;->mIsUsbStorage:Z

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "MediaFormat"

    const-string v4, "+mVolumeDescription is null or external sd card, use default string"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const v3, 0x7f0b0299

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdCardString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdCardString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    iget-object v5, p0, Lcom/android/settingsstock/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not replace SD card, Replace SD, str is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    new-instance v0, Lcom/android/settingsstock/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0b05c9

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0b05ca

    invoke-direct {p0, v2}, Lcom/android/settingsstock/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingsstock/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/MediaFormat;->finish()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settingsstock/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInitialView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "volume"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    const-string v1, "IsUsbStorage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingsstock/MediaFormat;->mIsUsbStorage:Z

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mVolumePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingsstock/MediaFormat;->mIsInternalSD:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/MediaFormat;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/MediaFormat;->mContentResolver:Landroid/content/ContentResolver;

    const v1, 0x7f0b05c3

    invoke-direct {p0, v1}, Lcom/android/settingsstock/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/MediaFormat;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settingsstock/MediaFormat;->establishInitialState()V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/MediaFormat;->establishInitialState()V

    :cond_0
    return-void
.end method
