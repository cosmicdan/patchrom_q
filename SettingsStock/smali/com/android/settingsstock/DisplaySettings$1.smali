.class Lcom/android/settingsstock/DisplaySettings$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DisplaySettings$1;->this$0:Lcom/android/settingsstock/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings$1;->this$0:Lcom/android/settingsstock/DisplaySettings;

    #calls: Lcom/android/settingsstock/DisplaySettings;->updateAccelerometerRotationCheckbox()V
    invoke-static {v0}, Lcom/android/settingsstock/DisplaySettings;->access$000(Lcom/android/settingsstock/DisplaySettings;)V

    return-void
.end method
