.class public Lcom/android/settingsstock/SettingsLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/SettingsLicenseActivity$LicenseFileLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/NOTICE.html.gz"

.field private static final LOGV:Z = false

.field private static final PROPERTY_LICENSE_PATH:Ljava/lang/String; = "ro.config.license_path"

.field private static final TAG:Ljava/lang/String; = "SettingsLicenseActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/SettingsLicenseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsLicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/SettingsLicenseActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/SettingsLicenseActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    const v0, 0x7f0b05fa

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settingsstock/SettingsLicenseActivity;->finish()V

    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b05f9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settingsstock/SettingsLicenseActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/SettingsLicenseActivity$2;-><init>(Lcom/android/settingsstock/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/settingsstock/SettingsLicenseActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/SettingsLicenseActivity$3;-><init>(Lcom/android/settingsstock/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iput-object v1, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "ro.config.license_path"

    const-string v6, "/system/etc/NOTICE.html.gz"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SettingsLicenseActivity"

    const-string v6, "The system property for the license file is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsLicenseActivity;->showErrorAndFinish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/settingsstock/SettingsLicenseActivity;->setVisible(Z)V

    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    new-instance v5, Lcom/android/settingsstock/SettingsLicenseActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settingsstock/SettingsLicenseActivity$1;-><init>(Lcom/android/settingsstock/SettingsLicenseActivity;)V

    iput-object v5, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    const v5, 0x7f0b05f9

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0b05fb

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {p0, v4, v1, v5, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iput-object v2, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settingsstock/SettingsLicenseActivity$LicenseFileLoader;

    iget-object v6, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v0, v6}, Lcom/android/settingsstock/SettingsLicenseActivity$LicenseFileLoader;-><init>(Lcom/android/settingsstock/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
