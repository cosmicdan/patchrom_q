.class public Lcom/android/settingsstock/ext/DefaultSimManagementExt;
.super Ljava/lang/Object;
.source "DefaultSimManagementExt.java"

# interfaces
.implements Lcom/android/settingsstock/ext/ISimManagementExt;


# static fields
.field private static final KEY_3G_SERVICE_SETTING:Ljava/lang/String; = "3g_service_settings"

.field private static final KEY_SIM_STATUS:Ljava/lang/String; = "status_info"

.field private static final TAG:Ljava/lang/String; = "DefaultSimManagementExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealWithDataConnChanged(Landroid/content/Intent;Z)V
    .locals 0

    return-void
.end method

.method public setToClosedSimSlot(I)V
    .locals 0

    return-void
.end method

.method public showChangeDataConnDialog(Landroid/preference/PreferenceFragment;)V
    .locals 2

    const-string v0, "DefaultSimManagementExt"

    const-string v1, "showChangeDataConnDialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSimManagementPref(Landroid/preference/PreferenceGroup;)V
    .locals 5

    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v3, "3g_service_settings"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v3, "status_info"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()---remove pref3GService"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    if-eqz v1, :cond_2

    const-string v3, "DefaultSimManagementExt"

    const-string v4, "updateSimManagementPref()---remove prefStatus"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    return-void
.end method
