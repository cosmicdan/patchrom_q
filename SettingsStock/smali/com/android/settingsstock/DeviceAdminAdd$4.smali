.class Lcom/android/settingsstock/DeviceAdminAdd$4;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DeviceAdminAdd;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DeviceAdminAdd;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DeviceAdminAdd$4;->this$0:Lcom/android/settingsstock/DeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/DeviceAdminAdd$4;->this$0:Lcom/android/settingsstock/DeviceAdminAdd;

    iget-object v0, v0, Lcom/android/settingsstock/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settingsstock/DeviceAdminAdd$4;->this$0:Lcom/android/settingsstock/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settingsstock/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/settingsstock/DeviceAdminAdd$4;->this$0:Lcom/android/settingsstock/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settingsstock/DeviceAdminAdd;->finish()V

    return-void
.end method
