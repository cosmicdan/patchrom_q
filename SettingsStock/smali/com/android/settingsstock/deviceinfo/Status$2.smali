.class Lcom/android/settingsstock/deviceinfo/Status$2;
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

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/Status$2;->this$0:Lcom/android/settingsstock/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status$2;->this$0:Lcom/android/settingsstock/deviceinfo/Status;

    #calls: Lcom/android/settingsstock/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/android/settingsstock/deviceinfo/Status;->access$500(Lcom/android/settingsstock/deviceinfo/Status;)V

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Status$2;->this$0:Lcom/android/settingsstock/deviceinfo/Status;

    #calls: Lcom/android/settingsstock/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settingsstock/deviceinfo/Status;->access$600(Lcom/android/settingsstock/deviceinfo/Status;)V

    return-void
.end method
