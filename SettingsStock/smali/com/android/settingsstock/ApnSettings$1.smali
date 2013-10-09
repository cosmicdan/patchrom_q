.class Lcom/android/settingsstock/ApnSettings$1;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Lcom/android/settingsstock/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/ApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/ApnSettings$1;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRcseOnlyApnStateChanged(Z)V
    .locals 3

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRcseOnlyApnStateChanged()-current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings$1;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings$1;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget v1, v1, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    #calls: Lcom/android/settingsstock/ApnSettings;->fillList(I)V
    invoke-static {v0, v1}, Lcom/android/settingsstock/ApnSettings;->access$000(Lcom/android/settingsstock/ApnSettings;I)V

    return-void
.end method
