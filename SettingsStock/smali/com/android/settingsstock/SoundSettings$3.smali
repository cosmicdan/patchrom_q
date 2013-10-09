.class Lcom/android/settingsstock/SoundSettings$3;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/SoundSettings;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settingsstock/SoundSettings$3;->this$0:Lcom/android/settingsstock/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/SoundSettings$3;->this$0:Lcom/android/settingsstock/SoundSettings;

    #getter for: Lcom/android/settingsstock/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settingsstock/SoundSettings;->access$000(Lcom/android/settingsstock/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/SoundSettings$3;->this$0:Lcom/android/settingsstock/SoundSettings;

    iget-object v1, p0, Lcom/android/settingsstock/SoundSettings$3;->this$0:Lcom/android/settingsstock/SoundSettings;

    #getter for: Lcom/android/settingsstock/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settingsstock/SoundSettings;->access$000(Lcom/android/settingsstock/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settingsstock/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/settingsstock/SoundSettings;->access$300(Lcom/android/settingsstock/SoundSettings;ILandroid/preference/Preference;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/SoundSettings$3;->this$0:Lcom/android/settingsstock/SoundSettings;

    #getter for: Lcom/android/settingsstock/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settingsstock/SoundSettings;->access$100(Lcom/android/settingsstock/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/SoundSettings$3;->this$0:Lcom/android/settingsstock/SoundSettings;

    iget-object v1, p0, Lcom/android/settingsstock/SoundSettings$3;->this$0:Lcom/android/settingsstock/SoundSettings;

    #getter for: Lcom/android/settingsstock/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settingsstock/SoundSettings;->access$100(Lcom/android/settingsstock/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settingsstock/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settingsstock/SoundSettings;->access$300(Lcom/android/settingsstock/SoundSettings;ILandroid/preference/Preference;I)V

    :cond_1
    return-void
.end method
