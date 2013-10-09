.class Lcom/android/settingsstock/SettingsLicenseActivity$1;
.super Landroid/os/Handler;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/SettingsLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/SettingsLicenseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SettingsLicenseActivity$1;->this$0:Lcom/android/settingsstock/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/SettingsLicenseActivity$1;->this$0:Lcom/android/settingsstock/SettingsLicenseActivity;

    #calls: Lcom/android/settingsstock/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settingsstock/SettingsLicenseActivity;->access$000(Lcom/android/settingsstock/SettingsLicenseActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/SettingsLicenseActivity$1;->this$0:Lcom/android/settingsstock/SettingsLicenseActivity;

    #calls: Lcom/android/settingsstock/SettingsLicenseActivity;->showErrorAndFinish()V
    invoke-static {v1}, Lcom/android/settingsstock/SettingsLicenseActivity;->access$100(Lcom/android/settingsstock/SettingsLicenseActivity;)V

    goto :goto_0
.end method
