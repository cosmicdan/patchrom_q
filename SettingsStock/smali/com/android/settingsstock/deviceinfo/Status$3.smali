.class Lcom/android/settingsstock/deviceinfo/Status$3;
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

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/Status$3;->this$0:Lcom/android/settingsstock/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status$3;->this$0:Lcom/android/settingsstock/deviceinfo/Status;

    invoke-virtual {v0}, Lcom/android/settingsstock/deviceinfo/Status;->updateSignalStrength()V

    return-void
.end method
