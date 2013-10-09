.class Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Lcom/mediatek/voicesettings/VoiceUiSwitchPreference$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceControlListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;


# direct methods
.method private constructor <init>(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;-><init>(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Z)Z
    .locals 6

    const/4 v2, 0x1

    const-string v3, "InputMethodAndLanguageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBeforeCheckedChanged isChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    iget-object v4, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mRawData:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$200(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v4

    #calls: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->isAllDisabled(Ljava/util/HashMap;)Z
    invoke-static {v3, v4}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$300(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;Ljava/util/HashMap;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    iget-object v4, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mVoiceUiAppStatus:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$400(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v4

    #calls: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->isAllDisabled(Ljava/util/HashMap;)Z
    invoke-static {v3, v4}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$300(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "can\'t open switch, because all is off"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Z)V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "InputMethodAndLanguageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCheckedChanged isChecked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "InputMethodAndLanguageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCheckedChanged mVoiceUiEnaber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mVoiceUiEnaber:Lcom/mediatek/voicesettings/VoiceUiSwitchPreference;
    invoke-static {v10}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$100(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Lcom/mediatek/voicesettings/VoiceUiSwitchPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/voicesettings/VoiceUiSwitchPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v6}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voice_control_enabled"

    if-eqz p1, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    iget-object v9, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mRawData:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$200(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v9

    #calls: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->isAllDisabled(Ljava/util/HashMap;)Z
    invoke-static {v6, v9}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$300(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;Ljava/util/HashMap;)Z

    move-result v2

    const-string v6, "InputMethodAndLanguageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllOff="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    move v6, v7

    :goto_1
    if-ne v2, v6, :cond_2

    :goto_2
    return-void

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :cond_2
    if-nez p1, :cond_4

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mRawData:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$200(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mRawData:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$200(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_3

    const-string v6, "InputMethodAndLanguageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "status is unchecked, disable process name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mRawData:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$200(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mVoiceUiAppStatus:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$400(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mVoiceUiAppStatus:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$400(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_5

    const-string v6, "InputMethodAndLanguageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "status is checked, enable process name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mRawData:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$200(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mRawData:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$200(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    array-length v6, v4

    new-array v5, v6, [I

    const/4 v0, 0x0

    :goto_5
    array-length v6, v4

    if-ge v0, v6, :cond_7

    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #getter for: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->mRawData:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$200(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;)Ljava/util/HashMap;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings$VoiceControlListener;->this$0:Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;

    #calls: Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->setApps([Ljava/lang/String;[I)V
    invoke-static {v6, v4, v5}, Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;->access$500(Lcom/android/settingsstock/inputmethod/InputMethodAndLanguageSettings;[Ljava/lang/String;[I)V

    const-string v7, "InputMethodAndLanguageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update values "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_8

    const-string v6, "on "

    :goto_6
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    const-string v6, "off "

    goto :goto_6
.end method
