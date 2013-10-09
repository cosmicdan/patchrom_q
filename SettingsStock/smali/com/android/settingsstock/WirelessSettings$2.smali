.class Lcom/android/settingsstock/WirelessSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/WirelessSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/WirelessSettings$2;->this$0:Lcom/android/settingsstock/WirelessSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener, new state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/WirelessSettings$2;->this$0:Lcom/android/settingsstock/WirelessSettings;

    invoke-virtual {v2}, Lcom/android/settingsstock/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/WirelessSettings$2;->this$0:Lcom/android/settingsstock/WirelessSettings;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total PhoneState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/WirelessSettings$2;->this$0:Lcom/android/settingsstock/WirelessSettings;

    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    #setter for: Lcom/android/settingsstock/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v2, v3}, Lcom/android/settingsstock/WirelessSettings;->access$302(Lcom/android/settingsstock/WirelessSettings;Lcom/android/internal/telephony/ITelephony;)Lcom/android/internal/telephony/ITelephony;

    iget-object v2, p0, Lcom/android/settingsstock/WirelessSettings$2;->this$0:Lcom/android/settingsstock/WirelessSettings;

    #calls: Lcom/android/settingsstock/WirelessSettings;->updateMobileNetworkEnabled()V
    invoke-static {v2}, Lcom/android/settingsstock/WirelessSettings;->access$400(Lcom/android/settingsstock/WirelessSettings;)V

    :cond_0
    return-void
.end method
