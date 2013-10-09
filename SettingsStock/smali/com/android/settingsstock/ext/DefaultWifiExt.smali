.class public Lcom/android/settingsstock/ext/DefaultWifiExt;
.super Ljava/lang/Object;
.source "DefaultWifiExt.java"

# interfaces
.implements Lcom/android/settingsstock/ext/IWifiExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingsstock/ext/DefaultWifiExt;->mContext:Landroid/content/Context;

    const-string v0, "DefaultWifiExt"

    const-string v1, "DefaultWifiExt"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public closeSpinnerDialog()V
    .locals 0

    return-void
.end method

.method public getApOrder(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 2

    const-string v0, "DefaultWifiExt"

    const-string v1, "getApOrder(),return 0"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPriorityView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurityText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultWifiExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSleepPolicy(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "wifi_sleep_policy"

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSwitchState()Z
    .locals 2

    const-string v0, "DefaultWifiExt"

    const-string v1, "getSwitchState(), return true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getWifiApSsid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/ext/DefaultWifiExt;->mContext:Landroid/content/Context;

    const v1, 0x1040410

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initConnectView(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 0

    return-void
.end method

.method public initNetworkInfoView(Landroid/preference/PreferenceScreen;)V
    .locals 0

    return-void
.end method

.method public initPreference(Landroid/content/ContentResolver;)V
    .locals 0

    return-void
.end method

.method public initSwitchState(Landroid/widget/Switch;)V
    .locals 0

    return-void
.end method

.method public refreshNetworkInfoView()V
    .locals 0

    return-void
.end method

.method public registerAirplaneModeObserver(Landroid/widget/Switch;)V
    .locals 0

    return-void
.end method

.method public setAPNetworkId(I)V
    .locals 0

    return-void
.end method

.method public setAPPriority(I)V
    .locals 0

    return-void
.end method

.method public setProxyText(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public setSecurityText(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public shouldAddForgetButton(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldSetDisconnectButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unRegisterAirplaneObserver()V
    .locals 0

    return-void
.end method
