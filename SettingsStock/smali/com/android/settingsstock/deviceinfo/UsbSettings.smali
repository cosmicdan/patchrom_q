.class public Lcom/android/settingsstock/deviceinfo/UsbSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_BICR:Ljava/lang/String; = "usb_bicr"

.field private static final KEY_CHARGE:Ljava/lang/String; = "usb_charge"

.field private static final KEY_MTP:Ljava/lang/String; = "usb_mtp"

.field private static final KEY_PTP:Ljava/lang/String; = "usb_ptp"

.field private static final KEY_UMS:Ljava/lang/String; = "usb_ums"

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final USB_CHARGING_PHLUGIN:I = 0x2


# instance fields
.field private mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

.field private mBicrExist:Z

.field private mCanUpdateToggle:Z

.field private mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

.field private mChargeExist:Z

.field private mCurrentToggles:Ljava/lang/String;

.field private mIsHwUsbConnected:Z

.field private mIsPcKnowMe:Z

.field private mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

.field private mPlugType:I

.field private mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

.field private mUmsExist:Z

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    iput-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    iput-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPlugType:I

    iput-boolean v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    new-instance v0, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settingsstock/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settingsstock/deviceinfo/UsbSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settingsstock/deviceinfo/UsbSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settingsstock/deviceinfo/UsbSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/deviceinfo/UsbSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settingsstock/deviceinfo/UsbSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settingsstock/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settingsstock/deviceinfo/UsbSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPlugType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settingsstock/deviceinfo/UsbSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPlugType:I

    return p1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v5, 0x7f050043

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "usb_mtp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "usb_ptp"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "usb_ums"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "usb_charge"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "usb_bicr"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iput-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v5, p0}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "ro.sys.usb.storage.type"

    const-string v6, "mtp"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "mtp,mass_storage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean v8, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    :cond_1
    const-string v5, "ro.sys.usb.charging.only"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.charging.only: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "no"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "UsbSettings"

    const-string v6, "Usb Charge does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean v8, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    :cond_2
    const-string v5, "ro.sys.usb.bicr"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.sys.usb.bicr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "no"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "UsbSettings"

    const-string v6, "Usb Bicr does not exist!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "usb_connect_as_cdrom_category"

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean v8, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    :cond_3
    return-object v4
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 5

    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_15

    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    return-void

    :cond_6
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_7
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_8
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    :cond_9
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_a
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_b
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    :cond_c
    const-string v0, "charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_d
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_e
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    :cond_f
    const-string v0, "bicr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_10
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_11
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_13
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    :cond_14
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    :cond_15
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    :cond_16
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    :cond_17
    iget-boolean v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/deviceinfo/UsbPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "UsbSettings"

    const-string v2, "onPreferenceChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v4

    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mMtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    const-string v1, "mtp"

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mPtp:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    const-string v1, "ptp"

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUms:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mass_storage"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    const-string v1, "mass_storage"

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mCharge:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "charging"

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    const-string v1, "charging"

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mBicr:Lcom/android/settingsstock/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "bicr"

    invoke-virtual {v1, v2, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    const-string v1, "bicr"

    invoke-direct {p0, v1}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
