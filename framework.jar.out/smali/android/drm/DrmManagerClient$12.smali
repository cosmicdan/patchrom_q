.class Landroid/drm/DrmManagerClient$12;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmManagerClient;->showLicenseAcquisition(Landroid/content/Context;Ljava/lang/String;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;

.field final synthetic val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;


# direct methods
.method constructor <init>(Landroid/drm/DrmManagerClient;Landroid/drm/DrmManagerClient$DrmOperationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2221
    iput-object p1, p0, Landroid/drm/DrmManagerClient$12;->this$0:Landroid/drm/DrmManagerClient;

    iput-object p2, p0, Landroid/drm/DrmManagerClient$12;->val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2223
    iget-object v0, p0, Landroid/drm/DrmManagerClient$12;->val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;

    if-eqz v0, :cond_0

    .line 2224
    const-string v0, "DrmManagerClient"

    const-string/jumbo v1, "showLicenseAcquisition(): drm operation listener to operate STOP."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    iget-object v0, p0, Landroid/drm/DrmManagerClient$12;->val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/drm/DrmManagerClient$DrmOperationListener;->onOperated(I)V

    .line 2227
    :cond_0
    return-void
.end method
