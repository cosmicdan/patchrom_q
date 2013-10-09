.class public final Lcom/android/settingsstock/bluetooth/BluetoothSettings;
.super Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# static fields
.field private static final BTOPP_ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.btopp.intent.action.OPEN_RECEIVED_FILES"

.field private static final MENU_ID_ADVANCED_SETTING:I = 0x5

.field private static final MENU_ID_RENAME_DEVICE:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_SHOW_RECEIVED:I = 0x4

.field private static final MENU_ID_VISIBILITY_TIMEOUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0, p3}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;)V

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->addCachedDevices()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    return-void
.end method

.method private doesAdvancedFeatureExist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private startScanning()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    return-void
.end method

.method private updateContent(IZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->removeAllDevices()V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v4, :cond_0

    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f020052

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;)V

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_5

    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    :goto_3
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0b03e5

    sget-object v6, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;)V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v4, v2}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v4, :cond_6

    new-instance v4, Lcom/android/settingsstock/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/settingsstock/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    :goto_4
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v5, 0x7f0b03e6

    sget-object v6, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;)V

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    iput-boolean v8, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    :cond_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    if-ne p2, v8, :cond_7

    iput-boolean v9, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->startScanning()V

    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v5, 0x7f020058

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    :cond_7
    iget-boolean v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :pswitch_1
    const v0, 0x7f0b02ec

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f0b03ef

    goto/16 :goto_0

    :pswitch_3
    const v0, 0x7f0b02eb

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 9

    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    const v4, 0x7f05000b

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_1
    new-instance v4, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method initDevicePreference(Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->updateContent(IZ)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "BluetoothSettings"

    const-string v6, "onCreateOptionsMenu"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    move v0, v3

    :goto_1
    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    const-string v5, "BluetoothSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDiscovering "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    const v2, 0x7f0b03e3

    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x2

    const v5, 0x7f0b02ce

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x3

    const v5, 0x7f0b02c4

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x4

    const v5, 0x7f0b02e3

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->doesAdvancedFeatureExist()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    const v5, 0x7f0b0006

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    const v2, 0x7f0b03e2

    goto :goto_2

    :cond_4
    move v5, v4

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->removeAllDevices()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->updateContent(IZ)V

    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-super {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    :pswitch_1
    new-instance v4, Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v4}, Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "rename device"

    invoke-virtual {v4, v5, v6}, Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v4, Lcom/android/settingsstock/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v4}, Lcom/android/settingsstock/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "visibility timeout"

    invoke-virtual {v4, v5, v6}, Lcom/android/settingsstock/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.mediatek.bluetooth"

    const-string v5, "com.mediatek.bluetooth.settings.BluetoothAdvancedSettingsActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "BluetoothSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->resume()V

    :cond_0
    invoke-super {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->updateContent(IZ)V

    :cond_2
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3

    const-string v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
