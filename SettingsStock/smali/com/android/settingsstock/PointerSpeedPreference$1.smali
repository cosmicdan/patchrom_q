.class Lcom/android/settingsstock/PointerSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/PointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/PointerSpeedPreference$1;->this$0:Lcom/android/settingsstock/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/PointerSpeedPreference$1;->this$0:Lcom/android/settingsstock/PointerSpeedPreference;

    #calls: Lcom/android/settingsstock/PointerSpeedPreference;->onSpeedChanged()V
    invoke-static {v0}, Lcom/android/settingsstock/PointerSpeedPreference;->access$000(Lcom/android/settingsstock/PointerSpeedPreference;)V

    return-void
.end method
