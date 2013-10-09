.class public final Lcom/android/settingsstock/wfd/WifiDisplaySettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# static fields
.field private static final MENU_ID_SCAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiDisplaySettings"


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAvailableDevicesCategory:Lcom/android/settingsstock/ProgressCategory;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIsTablet:Z

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->applyState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingsstock/wfd/WifiDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->update()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method private applyState()V
    .locals 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    const-string v8, "WifiDisplaySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyState, wfd state is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eq v3, v9, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v11, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    const/4 v8, 0x3

    if-ne v3, v8, :cond_8

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getRememberedDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    const-string v8, "WifiDisplaySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyState(), paired device list size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "WifiDisplaySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "applyState(), available device list size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v8, :cond_1

    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v11, 0x7f0b0419

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    :goto_1
    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object v0, v6

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    const-string v8, "WifiDisplaySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "paired device is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v9}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    move v8, v10

    goto/16 :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settingsstock/ProgressCategory;

    if-nez v8, :cond_5

    new-instance v8, Lcom/android/settingsstock/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x7f0b0418

    invoke-direct {v8, v11, v12, v13}, Lcom/android/settingsstock/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settingsstock/ProgressCategory;

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settingsstock/ProgressCategory;

    const v11, 0x7f0b041a

    invoke-virtual {v8, v11}, Lcom/android/settingsstock/ProgressCategory;->setTitle(I)V

    :goto_3
    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settingsstock/ProgressCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object v0, v1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_6

    aget-object v2, v0, v4

    const-string v8, "WifiDisplaySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "available device is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settingsstock/ProgressCategory;

    invoke-direct {p0, v2, v10}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/settingsstock/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settingsstock/ProgressCategory;

    invoke-virtual {v8}, Lcom/android/settingsstock/ProgressCategory;->removeAll()V

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v8

    if-ne v8, v9, :cond_7

    const-string v8, "WifiDisplaySettings"

    const-string v10, "applystate(), scan state is scanning"

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settingsstock/ProgressCategory;

    invoke-virtual {v8, v9}, Lcom/android/settingsstock/ProgressCategory;->setProgress(Z)V

    :goto_5
    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_7
    const-string v8, "WifiDisplaySettings"

    const-string v9, "applystate(), scan state is not scan"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/settingsstock/ProgressCategory;

    invoke-virtual {v8, v10}, Lcom/android/settingsstock/ProgressCategory;->setProgress(Z)V

    goto :goto_5

    :cond_8
    iget-object v9, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const/4 v8, 0x2

    if-ne v3, v8, :cond_9

    const v8, 0x7f0b0414

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_9
    const v8, 0x7f0b0415

    goto :goto_6
.end method

.method private static contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;
    .locals 4

    new-instance v0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    iget-object v1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWifiDisplayPreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const v1, 0x7f0400b1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->setWidgetLayoutResource(I)V

    :cond_1
    return-object v0

    :pswitch_0
    const v1, 0x7f0b041c

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0b041b

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b041d

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showDisconnectDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8

    const/4 v5, 0x1

    new-instance v1, Lcom/android/settingsstock/wfd/WifiDisplaySettings$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b041f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0420

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400b0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f08007b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/settingsstock/wfd/WifiDisplaySettings$2;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    new-instance v2, Lcom/android/settingsstock/wfd/WifiDisplaySettings$3;

    invoke-direct {v2, p0, p1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0421

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0423

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0422

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private update()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: mWifiDisplayOnSetting is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->applyState()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->update()V

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WifiDisplaySettings"

    const-string v3, "Wfd is unavailable, finish the activity"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const v0, 0x7f05004d

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mIsTablet:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mIsTablet:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0b0417

    :goto_0
    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    const v1, 0x7f0b0416

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    const-string v0, "WifiDisplaySettings"

    const-string v1, "Click scan menu, start scan wifi display device"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    instance-of v2, p2, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {v1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiDisplaySettings"

    const-string v3, "Click the connected device preference, show disconnect dialog"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->showDisconnectDialog(Landroid/hardware/display/WifiDisplay;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    const-string v2, "WifiDisplaySettings"

    const-string v3, "Call display manager to connect directly"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    const-string v2, "WifiDisplaySettings"

    const-string v3, "onResume, start scan wifi display device"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->update()V

    return-void
.end method

.method public onStart()V
    .locals 7

    const/16 v3, 0x10

    const/4 v6, -0x2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mIsTablet:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->mIsTablet:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
