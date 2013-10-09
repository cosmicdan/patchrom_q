.class Lcom/android/settingsstock/deviceinfo/Memory$4;
.super Landroid/os/storage/StorageEventListener;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/deviceinfo/Memory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/Memory$4;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v3, "MemorySettings"

    const-string v4, "onStorageStateChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory$4;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    #getter for: Lcom/android/settingsstock/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settingsstock/deviceinfo/Memory;->access$600(Lcom/android/settingsstock/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Memory$4;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    #getter for: Lcom/android/settingsstock/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/Memory;->access$500(Lcom/android/settingsstock/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory$4;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    #getter for: Lcom/android/settingsstock/deviceinfo/Memory;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settingsstock/deviceinfo/Memory;->access$600(Lcom/android/settingsstock/deviceinfo/Memory;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/deviceinfo/Memory$4;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    #getter for: Lcom/android/settingsstock/deviceinfo/Memory;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/settingsstock/deviceinfo/Memory;->access$500(Lcom/android/settingsstock/deviceinfo/Memory;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received storage state changed notification that "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed state from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory$4;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    #getter for: Lcom/android/settingsstock/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settingsstock/deviceinfo/Memory;->access$100(Lcom/android/settingsstock/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    :cond_1
    const-string v3, "MemorySettings"

    const-string v4, "dynamicShowInstallLocation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory$4;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    invoke-virtual {v3}, Lcom/android/settingsstock/deviceinfo/Memory;->dynamicShowInstallLocation()V

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory$4;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    #getter for: Lcom/android/settingsstock/deviceinfo/Memory;->mIsApkInstallerExist:Z
    invoke-static {v3}, Lcom/android/settingsstock/deviceinfo/Memory;->access$700(Lcom/android/settingsstock/deviceinfo/Memory;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/deviceinfo/Memory$4;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    invoke-virtual {v3}, Lcom/android/settingsstock/deviceinfo/Memory;->dynamicShowAPKInstaller()V

    :cond_2
    return-void
.end method
