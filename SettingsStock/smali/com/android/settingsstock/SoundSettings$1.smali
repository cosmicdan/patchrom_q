.class Lcom/android/settingsstock/SoundSettings$1;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SoundSettings$1;->this$0:Lcom/android/settingsstock/SoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingsstock/SoundSettings$1;->this$0:Lcom/android/settingsstock/SoundSettings;

    #getter for: Lcom/android/settingsstock/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settingsstock/SoundSettings;->access$000(Lcom/android/settingsstock/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settingsstock/SoundSettings$1;->this$0:Lcom/android/settingsstock/SoundSettings;

    #getter for: Lcom/android/settingsstock/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settingsstock/SoundSettings;->access$100(Lcom/android/settingsstock/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
