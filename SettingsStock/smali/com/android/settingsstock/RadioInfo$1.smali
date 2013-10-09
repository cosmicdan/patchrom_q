.class Lcom/android/settingsstock/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #setter for: Lcom/android/settingsstock/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/settingsstock/RadioInfo;->access$802(Lcom/android/settingsstock/RadioInfo;Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$900(Lcom/android/settingsstock/RadioInfo;)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #setter for: Lcom/android/settingsstock/RadioInfo;->mCellInfoValue:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/settingsstock/RadioInfo;->access$1002(Lcom/android/settingsstock/RadioInfo;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updateCellInfoTv()V
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$1100(Lcom/android/settingsstock/RadioInfo;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/settingsstock/RadioInfo;->access$500(Lcom/android/settingsstock/RadioInfo;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$400(Lcom/android/settingsstock/RadioInfo;)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$000(Lcom/android/settingsstock/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$100(Lcom/android/settingsstock/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$200(Lcom/android/settingsstock/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$300(Lcom/android/settingsstock/RadioInfo;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #setter for: Lcom/android/settingsstock/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/settingsstock/RadioInfo;->access$602(Lcom/android/settingsstock/RadioInfo;Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$1;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$700(Lcom/android/settingsstock/RadioInfo;)V

    return-void
.end method
