.class Lcom/android/settingsstock/HDMISettings$1;
.super Ljava/lang/Object;
.source "HDMISettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/HDMISettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/HDMISettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/HDMISettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/HDMISettings$1;->this$0:Lcom/android/settingsstock/HDMISettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/HDMISettings$1;->this$0:Lcom/android/settingsstock/HDMISettings;

    check-cast p2, Lcom/mediatek/hdmi/HDMILocalService$LocalBinder;

    invoke-virtual {p2}, Lcom/mediatek/hdmi/HDMILocalService$LocalBinder;->getService()Lcom/mediatek/hdmi/HDMILocalService;

    move-result-object v1

    #setter for: Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;
    invoke-static {v0, v1}, Lcom/android/settingsstock/HDMISettings;->access$002(Lcom/android/settingsstock/HDMISettings;Lcom/mediatek/hdmi/HDMILocalService;)Lcom/mediatek/hdmi/HDMILocalService;

    const-string v0, "hdmi"

    const-string v1, "HDMISettings, HDMILocalService is connected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/HDMISettings$1;->this$0:Lcom/android/settingsstock/HDMISettings;

    #calls: Lcom/android/settingsstock/HDMISettings;->updateSettingsItemEnableStatus()V
    invoke-static {v0}, Lcom/android/settingsstock/HDMISettings;->access$100(Lcom/android/settingsstock/HDMISettings;)V

    iget-object v0, p0, Lcom/android/settingsstock/HDMISettings$1;->this$0:Lcom/android/settingsstock/HDMISettings;

    #calls: Lcom/android/settingsstock/HDMISettings;->updateSelectedResolution()V
    invoke-static {v0}, Lcom/android/settingsstock/HDMISettings;->access$200(Lcom/android/settingsstock/HDMISettings;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/HDMISettings$1;->this$0:Lcom/android/settingsstock/HDMISettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;
    invoke-static {v0, v1}, Lcom/android/settingsstock/HDMISettings;->access$002(Lcom/android/settingsstock/HDMISettings;Lcom/mediatek/hdmi/HDMILocalService;)Lcom/mediatek/hdmi/HDMILocalService;

    return-void
.end method
