.class public Lcom/android/settingsstock/TVOutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TVOutReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    if-nez v0, :cond_0

    const-class v1, Lcom/mediatek/common/tvout/ITVOUTNative;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/tvout/ITVOUTNative;

    :cond_0
    invoke-interface {v0}, Lcom/mediatek/common/tvout/ITVOUTNative;->IPOPowerOff()Z

    return-void
.end method
