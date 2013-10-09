.class Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$2;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateApproximate(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;JJ)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    aput-wide p4, v1, v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateDetails(Lcom/android/settingsstock/deviceinfo/StorageMeasurement;Lcom/android/settingsstock/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
