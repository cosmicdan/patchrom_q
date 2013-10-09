.class public Lcom/android/settingsstock/ext/DefaultWifiSettingsExt;
.super Ljava/lang/Object;
.source "DefaultWifiSettingsExt.java"

# interfaces
.implements Lcom/android/settingsstock/ext/IWifiSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiSettingsExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustPriority()V
    .locals 0

    return-void
.end method

.method public disconnect(I)V
    .locals 0

    return-void
.end method

.method public emptyCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    return-void
.end method

.method public emptyScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    return-void
.end method

.method public getAccessPointsCount(Landroid/preference/PreferenceScreen;)I
    .locals 1

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public isCatogoryExist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTustAP(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public recordPriority(I)V
    .locals 0

    return-void
.end method

.method public refreshCategory(Landroid/preference/PreferenceScreen;)V
    .locals 0

    return-void
.end method

.method public registerPriorityObserver(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setCategory(Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V
    .locals 0

    return-void
.end method

.method public setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    return-void
.end method

.method public setLastPriority(I)V
    .locals 0

    return-void
.end method

.method public setNewPriority(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    return-void
.end method

.method public shouldAddDisconnectMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddForgetMenu(Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "DefaultWifiSettingsExt"

    const-string v1, "WifiSettingsExt, shouldAddMenuForget(),return true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public unregisterPriorityObserver(Landroid/content/ContentResolver;)V
    .locals 0

    return-void
.end method

.method public updatePriority()V
    .locals 0

    return-void
.end method

.method public updatePriorityAfterConnect(I)V
    .locals 0

    return-void
.end method

.method public updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    return-void
.end method
