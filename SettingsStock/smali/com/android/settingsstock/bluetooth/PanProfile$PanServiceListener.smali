.class final Lcom/android/settingsstock/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/bluetooth/PanProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/bluetooth/PanProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/PanProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/bluetooth/PanProfile;Lcom/android/settingsstock/bluetooth/PanProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settingsstock/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    invoke-static {}, Lcom/android/settingsstock/bluetooth/PanProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    #setter for: Lcom/android/settingsstock/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/settingsstock/bluetooth/PanProfile;->access$102(Lcom/android/settingsstock/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/PanProfile;

    const/4 v1, 0x1

    #setter for: Lcom/android/settingsstock/bluetooth/PanProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/bluetooth/PanProfile;->access$202(Lcom/android/settingsstock/bluetooth/PanProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    invoke-static {}, Lcom/android/settingsstock/bluetooth/PanProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/PanProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settingsstock/bluetooth/PanProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/bluetooth/PanProfile;->access$202(Lcom/android/settingsstock/bluetooth/PanProfile;Z)Z

    return-void
.end method
