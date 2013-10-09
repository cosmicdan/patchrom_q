.class final Lcom/android/settingsstock/bluetooth/A2dpProfile$A2dpServiceListener;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/bluetooth/A2dpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "A2dpServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/A2dpProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/bluetooth/A2dpProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/bluetooth/A2dpProfile;Lcom/android/settingsstock/bluetooth/A2dpProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settingsstock/bluetooth/A2dpProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    invoke-static {}, Lcom/android/settingsstock/bluetooth/A2dpProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    #setter for: Lcom/android/settingsstock/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/android/settingsstock/bluetooth/A2dpProfile;->access$102(Lcom/android/settingsstock/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    const/4 v1, 0x1

    #setter for: Lcom/android/settingsstock/bluetooth/A2dpProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/bluetooth/A2dpProfile;->access$202(Lcom/android/settingsstock/bluetooth/A2dpProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    invoke-static {}, Lcom/android/settingsstock/bluetooth/A2dpProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingsstock/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settingsstock/bluetooth/A2dpProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/bluetooth/A2dpProfile;->access$202(Lcom/android/settingsstock/bluetooth/A2dpProfile;Z)Z

    return-void
.end method
