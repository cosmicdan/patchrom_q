.class Lcom/android/settingsstock/AirplaneModeEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/AirplaneModeEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/AirplaneModeEnabler$1;->this$0:Lcom/android/settingsstock/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "AirplaneModeEnabler"

    const-string v2, "mAirplaneModeReceiver AIRPLANE_MODE_CHANGED..."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler$1;->this$0:Lcom/android/settingsstock/AirplaneModeEnabler;

    #getter for: Lcom/android/settingsstock/AirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settingsstock/AirplaneModeEnabler;->access$000(Lcom/android/settingsstock/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingsstock/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler$1;->this$0:Lcom/android/settingsstock/AirplaneModeEnabler;

    #getter for: Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settingsstock/AirplaneModeEnabler;->access$100(Lcom/android/settingsstock/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/AirplaneModeEnabler$1;->this$0:Lcom/android/settingsstock/AirplaneModeEnabler;

    #getter for: Lcom/android/settingsstock/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settingsstock/AirplaneModeEnabler;->access$100(Lcom/android/settingsstock/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method
