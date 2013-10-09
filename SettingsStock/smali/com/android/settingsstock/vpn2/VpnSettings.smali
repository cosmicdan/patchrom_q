.class public Lcom/android/settingsstock/vpn2/VpnSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;,
        Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VpnSettings"

.field private static final TAG_LOCKDOWN:Ljava/lang/String; = "lockdown"


# instance fields
.field private mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUnlocking:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settingsstock/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b08fb

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "VPN_"

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v0, v3

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v6
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;->update(I)V

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    if-eqz v1, :cond_2

    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;->update(I)V

    iput-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    iget-object v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v5}, Lcom/android/settingsstock/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    const-string v5, "LOCKDOWN_VPN"

    #calls: Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->access$000(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_0

    if-nez v2, :cond_4

    iget-object v5, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settingsstock/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v5}, Lcom/android/settingsstock/vpn2/VpnDialog;->isEditing()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v2, :cond_5

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/settingsstock/vpn2/VpnSettings;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_6

    iget-boolean v5, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-nez v5, :cond_2

    const-string v5, ""

    iput-object v5, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const-string v5, ""

    iput-object v5, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    :cond_2
    invoke-virtual {v3, v4}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/internal/net/VpnProfile;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v5, "VpnSettings"

    const-string v6, "lockdown vpn is enable for connect, do not disconnect."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "VpnSettings"

    const-string v6, "connect"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    const-string v5, "VpnSettings"

    const-string v6, "lockdown vpn is enable for connect, do not connect to other profile."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0b01c2

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_6
    new-instance v3, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    invoke-virtual {v3, p0}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    if-eqz v5, :cond_0

    const-string v4, "VpnSettings"

    const-string v5, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    iget-object v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    if-nez v2, :cond_1

    const-string v4, "VpnSettings"

    const-string v5, "onContextItemSelected() is called but no preference is found"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v3, Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    invoke-direct {v3, v5, p0, v6, v4}, Lcom/android/settingsstock/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settingsstock/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settingsstock/vpn2/VpnDialog;->show()V

    move v3, v4

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settingsstock/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v3, "LOCKDOWN_VPN"

    #calls: Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->access$000(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "VpnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockdownKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mSelectedKey"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "VpnSettings"

    const-string v5, "delete lockdown vpn profile"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v3, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    :cond_2
    move v3, v4

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b08f5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    const v1, 0x7f050047

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    if-eqz p1, :cond_0

    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settingsstock/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const v6, 0x7f0b08f6

    const v5, 0x7f0b08f5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    instance-of v2, v0, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1
    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v2}, Lcom/android/settingsstock/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settingsstock/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settingsstock/vpn2/VpnDialog;->show()V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/settingsstock/vpn2/VpnSettings;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f08027a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settingsstock/vpn2/VpnDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    instance-of v3, p1, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    invoke-virtual {p1}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    if-nez v3, :cond_2

    const-string v3, "VpnSettings"

    const-string v4, "mInfo.intent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b01c2

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_1
    new-instance v3, Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/settingsstock/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    :goto_1
    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settingsstock/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settingsstock/vpn2/VpnDialog;->show()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "VpnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInfo.intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_2
    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2

    :cond_4
    new-instance v3, Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/settingsstock/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08027b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v7}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v7

    sget-object v8, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v7, v8, :cond_2

    iget-boolean v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v7, :cond_1

    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    :goto_0
    iget-boolean v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUnlocking:Z

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->finishFragment()V

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUnlocking:Z

    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v8, v6, [I

    invoke-static {v7, v8}, Lcom/android/settingsstock/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    new-instance v3, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v3, v0, v4}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    invoke-virtual {v3, p0}, Lcom/android/settingsstock/vpn2/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v8, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v7, p0}, Lcom/android/settingsstock/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v7}, Lcom/android/settingsstock/vpn2/VpnDialog;->show()V

    :cond_4
    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v7, :cond_5

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    :cond_5
    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settingsstock/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/settingsstock/vpn2/VpnSettings;->mDialog:Lcom/android/settingsstock/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settingsstock/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
