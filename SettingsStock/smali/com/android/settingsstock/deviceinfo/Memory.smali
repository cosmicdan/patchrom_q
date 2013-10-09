.class public Lcom/android/settingsstock/deviceinfo/Memory;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/settingsstock/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DYNAMIC_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final APP_INSTALL_AUTO:I = 0x0

.field private static final APP_INSTALL_AUTO_ID:Ljava/lang/String; = "auto"

.field private static final APP_INSTALL_DEVICE:I = 0x1

.field private static final APP_INSTALL_DEVICE_ID:Ljava/lang/String; = "device"

.field private static final APP_INSTALL_SDCARD:I = 0x2

.field private static final APP_INSTALL_SDCARD_ID:Ljava/lang/String; = "sdcard"

.field private static final DEFAULT_WRITE_CATEGORY_KEY:Ljava/lang/String; = "memory_select"

.field private static final DLG_CONFIRM_MOUNT:I = 0x3

.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/sdcard1"

.field public static final H_UNMOUNT_ERROR:I = 0xb

.field private static final KEY_APK_INSTALLER:Ljava/lang/String; = "apk_installer"

.field private static final KEY_APP_INSTALL_LOCATION:Ljava/lang/String; = "app_install_location"

.field private static final MESSAGE_DELAY_TIME:I = 0xc8

.field private static final SD_EXIST:Ljava/lang/String; = "SD_EXIST"

.field private static final SD_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field private static final TAG_CONFIRM_CLEAR_CACHE:Ljava/lang/String; = "confirmClearCache"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/mnt/usbotg"

.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mApkInstallePref:Landroid/preference/Preference;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDeafultWritePathPref:Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

.field private mDefaultWritePath:Ljava/lang/String;

.field private mDefaultWritePathAdded:[Z

.field mDynSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInstallLocation:Landroid/preference/ListPreference;

.field private mIsApkInstallerExist:Z

.field private mIsRemovableVolume:Z

.field private mIsUnmountingUsb:Z

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

.field private mUiHandler:Landroid/os/Handler;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mVolumePrefCategory:Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsUnmountingUsb:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/Memory$1;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsApkInstallerExist:Z

    new-instance v0, Lcom/android/settingsstock/deviceinfo/Memory$4;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/Memory$4;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/Memory$5;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/Memory$5;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/Memory$10;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/Memory$10;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/deviceinfo/Memory;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settingsstock/deviceinfo/Memory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->doMount()V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settingsstock/deviceinfo/Memory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->showRemoveSDNotification()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settingsstock/deviceinfo/Memory;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settingsstock/deviceinfo/Memory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settingsstock/deviceinfo/Memory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/deviceinfo/Memory;)[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/deviceinfo/Memory;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/deviceinfo/Memory;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/deviceinfo/Memory;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingsstock/deviceinfo/Memory;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settingsstock/deviceinfo/Memory;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/deviceinfo/Memory;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsApkInstallerExist:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settingsstock/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settingsstock/deviceinfo/Memory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method private addCategory(Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p1}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->init()V

    return-void
.end method

.method private doMount()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    new-instance v1, Lcom/android/settingsstock/deviceinfo/Memory$9;

    invoke-direct {v1, p0, v0}, Lcom/android/settingsstock/deviceinfo/Memory$9;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Lcom/android/settingsstock/deviceinfo/Memory$9;->start()V

    return-void
.end method

.method private doUnmount()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    sget-object v1, Lcom/android/settingsstock/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    sget-object v1, Lcom/android/settingsstock/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b057e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settingsstock/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b057f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/settingsstock/deviceinfo/Memory$8;

    invoke-direct {v1, p0, v0}, Lcom/android/settingsstock/deviceinfo/Memory$8;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Lcom/android/settingsstock/deviceinfo/Memory$8;->start()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b057d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private dynamicShowDefaultWriteCategory()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowDefaultWriteCategory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v7, v3, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    aput-boolean v6, v3, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get default path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v7}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_3

    :cond_4
    return-void
.end method

.method private dynamicUpdateUnmountDlg()V
    .locals 6

    const-string v3, "MemorySettings"

    const-string v4, "dynamicUpdateUnmountDlg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "shared"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MemorySettings"

    const-string v4, "current status is UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/deviceinfo/Memory;->removeDialog(I)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "MemorySettings"

    const-string v4, "current status is MTP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v1, "device"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v1, "sdcard"

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "auto"

    goto :goto_0

    :cond_2
    const-string v1, "auto"

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    sget-object v2, Lcom/android/settingsstock/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    :cond_0
    return v3
.end method

.method private static isExSdcardInserted()Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Util:service is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Util:mountService is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->isSDExist()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Util:RemoteException when isSDExist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPkgInstalled(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v3, "MemorySettings"

    const-string v4, "the package name cannot be null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mount()V
    .locals 2

    sget-object v0, Lcom/android/settingsstock/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const-string v1, "/storage/sdcard1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsRemovableVolume:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settingsstock/deviceinfo/Memory;->showDialogInner(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->doMount()V

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/Memory;->removeDialog(I)V

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/deviceinfo/Memory;->showDialog(I)V

    return-void
.end method

.method private showRemoveSDNotification()V
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x7b

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "MemorySettings"

    const-string v5, "showRemoveSDNotification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    const v4, 0x10800ab

    const-string v5, "SD card safe to remove"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v8, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v1, v10, v10, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    invoke-virtual {v3, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private unmount()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->showDialogInner(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public dynamicShowAPKInstaller()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x1

    const-string v6, "MemorySettings"

    const-string v7, "dynamicShowAPKInstaller"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " volume state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public dynamicShowInstallLocation()V
    .locals 7

    const/4 v6, 0x0

    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowInstallLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " volume state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "shared"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "MemorySettings"

    const-string v4, "current status is UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "MemorySettings"

    const-string v4, "current status is not UMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settingsstock/deviceinfo/Memory;->isExSdcardInserted()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MemorySettings"

    const-string v4, "2SDCARD_SWAP feature , the external sd card is not mounted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v16, "usb"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/usb/UsbManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-static {v2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    const v16, 0x7f050010

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->addPreferencesFromResource(I)V

    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    const-string v16, "memory_select"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const-string v16, "MemorySettings"

    const-string v17, "not sd + swap, add internal storage"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->addCategory(Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v14

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v9

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    const-string v16, "MemorySettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Volume: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v14, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ,state is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v18, v0

    aget-object v19, v9, v4

    invoke-virtual/range {v18 .. v19}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ,emulated is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v14, v4

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", path is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v14, v4

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "not_present"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v17, v0

    aget-object v18, v9, v4

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    aget-object v16, v9, v4

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v16, v14, v4

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    const-string v16, "MemorySettings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "default path group length = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v7, [Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    new-array v0, v7, [Z

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mDefaultWritePathAdded:[Z

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_3

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    aput-object v17, v16, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    aget-object v17, v16, v4

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    aget-object v17, v16, v4

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "MemorySettings"

    const-string v17, "no share + swap, add non-emulated category"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v13}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->addCategory(Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    const-string v16, "apk_installer"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    const-string v16, "com.mediatek.apkinstaller"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mIsApkInstallerExist:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsApkInstallerExist:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v16, "com.mediatek.apkinstaller"

    const-string v17, "com.mediatek.apkinstaller.APKInstaller"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v16, 0x80

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_2
    const-string v16, "app_install_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/ListPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    const-string v15, ""

    const/4 v4, 0x0

    :goto_3
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_4

    aget-object v16, v14, v4

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    aget-object v16, v14, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v16, 0x1

    aput-object v15, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "set_install_location"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    if-eqz v16, :cond_7

    const/4 v12, 0x1

    :goto_4
    if-nez v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_5
    new-instance v16, Lcom/android/settingsstock/deviceinfo/Memory$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory$3;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/deviceinfo/Memory;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v16, "com.mediatek.SD_SWAP"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mApkInstallePref:Landroid/preference/Preference;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/deviceinfo/Memory;->mInstallLocation:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/settingsstock/deviceinfo/Memory$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settingsstock/deviceinfo/Memory$2;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;)V

    invoke-virtual/range {v16 .. v17}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const v4, 0x7f0b034d

    const v3, 0x7f0b0670

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b000d

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settingsstock/deviceinfo/Memory$6;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/deviceinfo/Memory$6;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b000e

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0579

    goto :goto_1

    :cond_1
    const v0, 0x7f0b057a

    goto :goto_2

    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b000f

    :goto_3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0b0010

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0b057b

    goto :goto_3

    :cond_3
    const v0, 0x7f0b057c

    goto :goto_4

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b014f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settingsstock/deviceinfo/Memory$7;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/deviceinfo/Memory$7;-><init>(Lcom/android/settingsstock/deviceinfo/Memory;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0150

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settingsstock/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0583

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/settingsstock/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settingsstock/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080279
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    check-cast p1, Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settingsstock/deviceinfo/RadioButtonPreference;

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {p0}, Lcom/android/settingsstock/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/settingsstock/deviceinfo/Memory;)V

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v8, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, p2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b000c

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :cond_3
    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v8

    if-eqz v8, :cond_2

    sput-object p2, Lcom/android/settingsstock/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsRemovableVolume:Z

    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick, mIsRemovableVolume is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsRemovableVolume:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settingsstock/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    sget-object v7, Lcom/android/settingsstock/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const-string v8, "/mnt/usbotg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsUnmountingUsb:Z

    iget-object v7, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->unmount()V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->mount()V

    goto/16 :goto_0

    :cond_6
    move v6, v7

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f080279

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    const-string v3, "MemorySettings"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->dynamicUpdateUnmountDlg()V

    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowInstallLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->dynamicShowInstallLocation()V

    iget-boolean v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mIsApkInstallerExist:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->dynamicShowAPKInstaller()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    :cond_1
    return-void
.end method
