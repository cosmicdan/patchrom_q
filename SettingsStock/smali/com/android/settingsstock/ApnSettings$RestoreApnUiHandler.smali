.class Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/ApnSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/ApnSettings;Lcom/android/settingsstock/ApnSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settingsstock/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget v1, v1, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    #calls: Lcom/android/settingsstock/ApnSettings;->fillList(I)V
    invoke-static {v0, v1}, Lcom/android/settingsstock/ApnSettings;->access$000(Lcom/android/settingsstock/ApnSettings;I)V

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settingsstock/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settingsstock/ApnSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnMode:Z

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settingsstock/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/ApnSettings;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settingsstock/ApnSettings;

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settingsstock/ApnSettings;

    invoke-virtual {v1}, Lcom/android/settingsstock/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
