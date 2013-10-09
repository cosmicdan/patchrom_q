.class Lcom/android/settingsstock/deviceinfo/Status$4;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/deviceinfo/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/Status$4;->this$0:Lcom/android/settingsstock/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status$4;->this$0:Lcom/android/settingsstock/deviceinfo/Status;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/android/settingsstock/deviceinfo/Status;->mServiceState:I
    invoke-static {v0, v1}, Lcom/android/settingsstock/deviceinfo/Status;->access$702(Lcom/android/settingsstock/deviceinfo/Status;I)I

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status$4;->this$0:Lcom/android/settingsstock/deviceinfo/Status;

    #calls: Lcom/android/settingsstock/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/settingsstock/deviceinfo/Status;->access$100(Lcom/android/settingsstock/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    return-void
.end method
