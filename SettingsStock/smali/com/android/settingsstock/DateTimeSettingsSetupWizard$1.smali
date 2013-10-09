.class Lcom/android/settingsstock/DateTimeSettingsSetupWizard$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettingsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DateTimeSettingsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DateTimeSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DateTimeSettingsSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settingsstock/DateTimeSettingsSetupWizard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/settingsstock/DateTimeSettingsSetupWizard;

    #calls: Lcom/android/settingsstock/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V
    invoke-static {v0}, Lcom/android/settingsstock/DateTimeSettingsSetupWizard;->access$000(Lcom/android/settingsstock/DateTimeSettingsSetupWizard;)V

    return-void
.end method
