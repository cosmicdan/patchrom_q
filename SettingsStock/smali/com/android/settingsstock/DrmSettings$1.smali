.class Lcom/android/settingsstock/DrmSettings$1;
.super Ljava/lang/Object;
.source "DrmSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DrmSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DrmSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DrmSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DrmSettings$1;->this$0:Lcom/android/settingsstock/DrmSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settingsstock/DrmSettings;->access$000()Landroid/drm/DrmManagerClient;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settingsstock/DrmSettings;->access$000()Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->removeAllRights()I

    move-result v0

    invoke-static {}, Lcom/android/settingsstock/DrmSettings;->access$000()Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/DrmSettings$1;->this$0:Lcom/android/settingsstock/DrmSettings;

    #getter for: Lcom/android/settingsstock/DrmSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settingsstock/DrmSettings;->access$100(Lcom/android/settingsstock/DrmSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00cc

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/settingsstock/DrmSettings;->access$200()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingsstock/DrmSettings;->access$002(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    :cond_0
    return-void

    :cond_1
    const-string v1, "DrmSettings"

    const-string v2, "removeAllRights fail!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
