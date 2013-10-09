.class Lcom/android/settingsstock/SettingsSafetyLegalActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SettingsSafetyLegalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/SettingsSafetyLegalActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/SettingsSafetyLegalActivity;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/SettingsSafetyLegalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SettingsSafetyLegalActivity$1;->this$0:Lcom/android/settingsstock/SettingsSafetyLegalActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/SettingsSafetyLegalActivity$1;->this$0:Lcom/android/settingsstock/SettingsSafetyLegalActivity;

    #getter for: Lcom/android/settingsstock/SettingsSafetyLegalActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v0}, Lcom/android/settingsstock/SettingsSafetyLegalActivity;->access$000(Lcom/android/settingsstock/SettingsSafetyLegalActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/SettingsSafetyLegalActivity$1;->this$0:Lcom/android/settingsstock/SettingsSafetyLegalActivity;

    const v2, 0x7f0b05fd

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/SettingsSafetyLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsSafetyLegalActivity$1;->this$0:Lcom/android/settingsstock/SettingsSafetyLegalActivity;

    #calls: Lcom/android/settingsstock/SettingsSafetyLegalActivity;->showErrorAndFinish(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/android/settingsstock/SettingsSafetyLegalActivity;->access$100(Lcom/android/settingsstock/SettingsSafetyLegalActivity;Ljava/lang/String;)V

    return-void
.end method
