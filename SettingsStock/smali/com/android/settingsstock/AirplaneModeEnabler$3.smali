.class Lcom/android/settingsstock/AirplaneModeEnabler$3;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/AirplaneModeEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/AirplaneModeEnabler$3;->this$0:Lcom/android/settingsstock/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const-string v0, "AirplaneModeEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener2.onServiceStateChanged: serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler$3;->this$0:Lcom/android/settingsstock/AirplaneModeEnabler;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/android/settingsstock/AirplaneModeEnabler;->mServiceState2:I
    invoke-static {v0, v1}, Lcom/android/settingsstock/AirplaneModeEnabler;->access$402(Lcom/android/settingsstock/AirplaneModeEnabler;I)I

    iget-object v0, p0, Lcom/android/settingsstock/AirplaneModeEnabler$3;->this$0:Lcom/android/settingsstock/AirplaneModeEnabler;

    #calls: Lcom/android/settingsstock/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settingsstock/AirplaneModeEnabler;->access$300(Lcom/android/settingsstock/AirplaneModeEnabler;)V

    return-void
.end method
