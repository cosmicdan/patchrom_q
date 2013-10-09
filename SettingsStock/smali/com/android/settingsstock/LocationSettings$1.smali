.class Lcom/android/settingsstock/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/LocationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/LocationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/LocationSettings$1;->this$0:Lcom/android/settingsstock/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/LocationSettings$1;->this$0:Lcom/android/settingsstock/LocationSettings;

    #calls: Lcom/android/settingsstock/LocationSettings;->updateLocationToggles()V
    invoke-static {v0}, Lcom/android/settingsstock/LocationSettings;->access$000(Lcom/android/settingsstock/LocationSettings;)V

    return-void
.end method
