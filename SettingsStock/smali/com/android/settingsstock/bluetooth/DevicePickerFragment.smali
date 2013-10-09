.class public final Lcom/android/settingsstock/bluetooth/DevicePickerFragment;
.super Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# static fields
.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final TAG:Ljava/lang/String; = "DevicePickerFragment"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mProgressCategory:Lcom/android/settingsstock/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanType:I

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment$1;-><init>(Lcom/android/settingsstock/bluetooth/DevicePickerFragment;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f050016

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->setFilter(I)V

    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-static {}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->getScanType(I)I

    move-result v2

    iput v2, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mScanType:I

    return-void
.end method

.method handleStateChanged(I)V
    .locals 2

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const-string v0, "DevicePickerFragment"

    const-string v1, "Turning off Bt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mScanType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->startScanning(ZI)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b02e4

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/ProgressCategory;

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/settingsstock/ProgressCategory;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->finish()V

    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingsstock/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settingsstock/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mProgressCategory:Lcom/android/settingsstock/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/ProgressCategory;->setNoDeviceFoundAdded(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->removeAllDevices()V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->addCachedDevices()V

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mScanType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;->startScanning(ZI)V

    iput-boolean v3, p0, Lcom/android/settingsstock/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    :cond_0
    return-void
.end method
