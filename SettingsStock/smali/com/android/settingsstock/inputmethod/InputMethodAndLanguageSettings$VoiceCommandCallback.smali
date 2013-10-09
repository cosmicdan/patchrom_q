.class Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceCommandCallback;
.super Lcom/mediatek/common/voicecommand/VoiceCommandListener;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceCommandCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;


# direct methods
.method public constructor <init>(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceCommandCallback;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    invoke-direct {p0, p2}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 4

    const-string v1, "Result"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "InputMethodAndLanguageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " VoiceCommandListener subAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceCommandCallback;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #calls: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->handleVoiceUiApps(ILandroid/os/Bundle;)V
    invoke-static {v1, v0, p3}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$000(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
