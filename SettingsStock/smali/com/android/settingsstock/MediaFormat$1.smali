.class Lcom/android/settingsstock/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/MediaFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/MediaFormat$1;->this$0:Lcom/android/settingsstock/MediaFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat$1;->this$0:Lcom/android/settingsstock/MediaFormat;

    #calls: Lcom/android/settingsstock/MediaFormat;->getMtpStatus()Z
    invoke-static {v1}, Lcom/android/settingsstock/MediaFormat;->access$000(Lcom/android/settingsstock/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat$1;->this$0:Lcom/android/settingsstock/MediaFormat;

    iget-object v2, p0, Lcom/android/settingsstock/MediaFormat$1;->this$0:Lcom/android/settingsstock/MediaFormat;

    const v3, 0x7f0b000b

    #calls: Lcom/android/settingsstock/MediaFormat;->getVolumeString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settingsstock/MediaFormat;->access$100(Lcom/android/settingsstock/MediaFormat;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat$1;->this$0:Lcom/android/settingsstock/MediaFormat;

    invoke-virtual {v1}, Lcom/android/settingsstock/MediaFormat;->finish()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settingsstock/MediaFormat$1;->this$0:Lcom/android/settingsstock/MediaFormat;

    #getter for: Lcom/android/settingsstock/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v2}, Lcom/android/settingsstock/MediaFormat;->access$200(Lcom/android/settingsstock/MediaFormat;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat$1;->this$0:Lcom/android/settingsstock/MediaFormat;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settingsstock/MediaFormat$1;->this$0:Lcom/android/settingsstock/MediaFormat;

    invoke-virtual {v1}, Lcom/android/settingsstock/MediaFormat;->finish()V

    goto :goto_0
.end method
