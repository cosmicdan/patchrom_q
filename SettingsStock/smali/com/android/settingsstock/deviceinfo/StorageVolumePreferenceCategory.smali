.class public Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
    }
.end annotation


# static fields
.field public static final KEY_CACHE:Ljava/lang/String; = "cache"

.field private static final MSG_UI_UPDATE_APPROXIMATE:I = 0x1

.field private static final MSG_UI_UPDATE_DETAILS:I = 0x2

.field private static final ORDER_STORAGE_LOW:I = -0x1

.field private static final ORDER_USAGE_BAR:I = -0x2

.field private static final TAG:Ljava/lang/String; = "StorageVolumePreferenceCategory"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/mnt/usbotg"


# instance fields
.field private mFormatPreference:Landroid/preference/Preference;

.field private mIsInternalSD:Z

.field private mIsPrimary:Z

.field private mIsUsbStorage:Z

.field private mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

.field private mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

.field private mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

.field private mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

.field private mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

.field private mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

.field private mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

.field private mItemTotal:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

.field private mItemUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingsstock/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasure:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mReceiver:Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementReceiver;

.field private final mResources:Landroid/content/res/Resources;

.field private mStorageLow:Landroid/preference/Preference;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTotalSize:J

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

.field private mUsbConnected:Z

.field private mUsbFunction:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$2;-><init>(Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementReceiver;

    iput-object p2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-static {p1, p2}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    const-string v0, "/mnt/usbotg"

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    const-string v0, "StorageVolumePreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmulated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemovable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0b066b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static buildForInternal(Landroid/content/Context;)Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;
    .locals 2

    new-instance v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1

    new-instance v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {v0, p0, p1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method private buildItem(II)Lcom/android/settingsstock/deviceinfo/StorageItemPreference;
    .locals 2

    new-instance v0, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getVolumeString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0299

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "StorageVolumePreferenceCategory"

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

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private measure()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->invalidate()V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->measure()V

    return-void
.end method

.method private resetPreferences()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_a
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private static varargs totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v4
.end method

.method private updateLowStoragePreference()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isSomeStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isStorageLow()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const v2, 0x7f0b0580

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    const v2, 0x7f0b0581

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V
    .locals 5

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->getOrder()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    long-to-float v2, p2

    iget-wide v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->color:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 9

    const v8, 0x7f0b0573

    const v7, 0x7f0b0572

    const v6, 0x7f0b0014

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageVolumePreferenceCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferencesFromState, state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const v2, 0x7f0b0565

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_4
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    if-eqz v1, :cond_10

    const-string v1, "mtp"

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ptp"

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_6
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0578

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0578

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const v2, 0x7f0b0564

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->setTitle(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b056f

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b0570

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_b
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "nofs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v7, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v8, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_e
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_f
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v7, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v2, 0x7f0b0571

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_10
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v2, 0x7f0b0575

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getUsersExcluding(Landroid/content/pm/UserInfo;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_2

    const/4 v14, 0x1

    :goto_0
    new-instance v16, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    move-object/from16 v16, v0

    const/16 v17, -0x2

    invoke-virtual/range {v16 .. v17}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const v16, 0x7f0b0566

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const v16, 0x7f0b0564

    const v17, 0x7f0a0007

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const v16, 0x7f0b0568

    const v17, 0x7f0a0008

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const v16, 0x7f0b056b

    const v17, 0x7f0a000a

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const v16, 0x7f0b056c

    const v17, 0x7f0a000b

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const v16, 0x7f0b056a

    const v17, 0x7f0a0009

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const v16, 0x7f0b056e

    const v17, 0x7f0a000c

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const v16, 0x7f0b056d

    const v17, 0x7f0a000d

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildItem(II)Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    const-string v17, "cache"

    invoke-virtual/range {v16 .. v17}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v16

    if-eqz v16, :cond_3

    :cond_0
    const/4 v13, 0x1

    :goto_1
    if-eqz v13, :cond_5

    if-eqz v14, :cond_1

    new-instance v16, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    iget-object v0, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    if-eqz v14, :cond_5

    new-instance v16, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;

    const v17, 0x7f0b058a

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const/4 v6, 0x0

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    add-int/lit8 v7, v6, 0x1

    rem-int/lit8 v16, v6, 0x2

    if-nez v16, :cond_4

    const v4, 0x7f0a000e

    :goto_3
    new-instance v15, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v16

    iget-object v0, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v15, v0, v1, v4, v2}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v6, v7

    goto :goto_2

    :catch_0
    move-exception v9

    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "Failed to get current user"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_4
    const v4, 0x7f0a000f

    goto :goto_3

    :cond_5
    new-instance v16, Landroid/preference/Preference;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b056f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b0570

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v16

    if-nez v16, :cond_7

    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_6

    new-instance v16, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b0574

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0b0016

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b0575

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0b0016

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updateLowStoragePreference()V

    return-void

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b0574

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    const v17, 0x7f0b0575

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v4, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settingsstock/MediaFormat;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "volume"

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "IsUsbStorage"

    iget-boolean v5, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsUsbStorage:Z

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settingsstock/Settings$ManageApplicationsActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "audio/mp3"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "vnd.android.cursor.dir/image"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "storage_volume"

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCacheCleared()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public onMediaScannerFinished()V
    .locals 2

    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onMediaScannerFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->cleanUp()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMeasure:Lcom/android/settingsstock/deviceinfo/StorageMeasurement;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mReceiver:Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementReceiver;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    return-void
.end method

.method public onStorageStateChanged()V
    .locals 2

    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onStorageStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    return-void
.end method

.method public onUsbStateChanged(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "StorageVolumePreferenceCategory"

    const-string v1, "onUsbStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsbConnected:Z

    iput-object p2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsbFunction:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    return-void
.end method

.method public setStorageVolume(Landroid/os/storage/StorageVolume;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    return-void
.end method

.method public updateApproximate(JJ)V
    .locals 6

    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : total size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", avail size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-direct {p0, p3, p4}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-wide p1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mTotalSize:J

    sub-long v0, p1, p3

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->clear()V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    const/4 v3, 0x0

    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    const v5, -0x777778

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->addEntry(IFI)V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->commit()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    return-void
.end method

.method public updateDetails(Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v13, :cond_7

    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateDetails, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", isPrimary is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_0
    const/4 v9, 0x1

    :goto_1
    if-nez v9, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string v13, "StorageVolumePreferenceCategory"

    const-string v14, "updateDetails, mVolume is null"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemTotal:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemAvailable:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    invoke-virtual {v13}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemApps:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v13, :cond_a

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v13

    if-nez v13, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v13

    if-eqz v13, :cond_c

    :cond_b
    const/4 v6, 0x1

    :goto_3
    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "measureMedia is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_d

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v1

    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mDcim size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x3

    sget-object v16, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x4

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v7

    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "music size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7, v8}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->mediaSize:Ljava/util/HashMap;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->totalValues(Ljava/util/HashMap;[Ljava/lang/String;)J

    move-result-wide v3

    const-string v13, "StorageVolumePreferenceCategory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloads size is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v4}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemCache:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMisc:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemUsers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v14, v10, Lcom/android/settingsstock/deviceinfo/StorageItemPreference;->userHandle:I

    invoke-virtual {v13, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDcim:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemMusic:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mItemDownloads:Lcom/android/settingsstock/deviceinfo/StorageItemPreference;

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(Lcom/android/settingsstock/deviceinfo/StorageItemPreference;J)V

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settingsstock/deviceinfo/UsageBarPreference;

    invoke-virtual {v13}, Lcom/android/settingsstock/deviceinfo/UsageBarPreference;->commit()V

    goto/16 :goto_2
.end method

.method public updateStorageVolumePrefCategory()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "StorageVolumePreferenceCategory"

    const-string v5, "sd swap ---- updateStorageVolumePrefCategory"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVolumeDescription is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    const-string v2, "StorageVolumePreferenceCategory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsInternalSD is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mIsInternalSD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mStorageLow:Landroid/preference/Preference;

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updateLowStoragePreference()V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-nez v2, :cond_2

    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v5, 0x7f0b056f

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v5, 0x7f0b0570

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v3

    :goto_3
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-nez v2, :cond_3

    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    :cond_3
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v3, 0x7f0b0574

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v3, 0x7f0b0575

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getVolumeString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b066b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto/16 :goto_1

    :cond_7
    move v1, v4

    goto :goto_2

    :cond_8
    move v0, v4

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-object v7, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    goto :goto_4
.end method
