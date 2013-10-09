.class public abstract Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingsstock/bluetooth/BluetoothCallback;


# static fields
.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field private static final PERFORMANCE_TAG:Ljava/lang/String; = "BtPerformanceTest"

.field private static final TAG:Ljava/lang/String; = "DeviceListPreferenceFragment"


# instance fields
.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    sget-object v0, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 3

    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressUi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/settingsstock/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settingsstock/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settingsstock/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;)V

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method initDevicePreference(Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 7

    const/16 v4, 0xd

    if-ne p1, v4, :cond_1

    const-string v4, "DeviceListPreferenceFragment"

    const-string v5, "Turn off bt"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v4, "BtPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][Bt] Bluetooth disable end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v4, 0xc

    if-ne p1, v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "BtPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][Bt] Bluetooth enable end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceAdded, Device name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "already have preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "create new preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;->onClicked()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/preference/PreferenceFragment;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingsstock/bluetooth/BluetoothCallback;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v3, 0x1

    const-string v4, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getScanType(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;)I

    move-result v2

    iget-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4, v3, v2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->startScanning(ZI)V

    :goto_0
    return v3

    :cond_0
    instance-of v4, p2, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;

    if-eqz v4, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/preference/PreferenceFragment;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingsstock/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingsstock/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    goto :goto_0
.end method

.method public onScanningStateChanged(Z)V
    .locals 3

    const-string v0, "DeviceListPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    return-void
.end method

.method removeAllDevices()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    return-void
.end method

.method final setFilter(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method final setFilter(Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingsstock/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method
