.class Lcom/android/settingsstock/RingerVolumePreference$1;
.super Landroid/os/Handler;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/RingerVolumePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/RingerVolumePreference$1;->this$0:Lcom/android/settingsstock/RingerVolumePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/RingerVolumePreference$1;->this$0:Lcom/android/settingsstock/RingerVolumePreference;

    #calls: Lcom/android/settingsstock/RingerVolumePreference;->updateSlidersAndMutedStates()V
    invoke-static {v0}, Lcom/android/settingsstock/RingerVolumePreference;->access$000(Lcom/android/settingsstock/RingerVolumePreference;)V

    return-void
.end method
