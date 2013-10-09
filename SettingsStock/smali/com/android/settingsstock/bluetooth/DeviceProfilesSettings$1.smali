.class Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/settingsstock/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method
