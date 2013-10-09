.class Lcom/android/settingsstock/DreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DreamSettings;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/DreamSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DreamSettings$PackageReceiver;->this$0:Lcom/android/settingsstock/DreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/DreamSettings;Lcom/android/settingsstock/DreamSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DreamSettings$PackageReceiver;-><init>(Lcom/android/settingsstock/DreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "PackageReceiver.onReceive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    #calls: Lcom/android/settingsstock/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/settingsstock/DreamSettings;->access$400(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$PackageReceiver;->this$0:Lcom/android/settingsstock/DreamSettings;

    #calls: Lcom/android/settingsstock/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/settingsstock/DreamSettings;->access$300(Lcom/android/settingsstock/DreamSettings;)V

    return-void
.end method
