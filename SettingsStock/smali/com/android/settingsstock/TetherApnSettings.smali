.class public Lcom/android/settingsstock/TetherApnSettings;
.super Lcom/android/settingsstock/ApnSettings;
.source "TetherApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREFER_APN_TETHER_URI:Landroid/net/Uri; = null

.field static final TAG:Ljava/lang/String; = "TetherApnSettings"


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mIsSIMReady:Z

.field private mIsSwitching:Z

.field private mIsTetehred:Z

.field private final mTetheringStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/prefertetheringapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/TetherApnSettings;->PREFER_APN_TETHER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;-><init>()V

    iput-boolean v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSwitching:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSIMReady:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsTetehred:Z

    new-instance v0, Lcom/android/settingsstock/TetherApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/TetherApnSettings$1;-><init>(Lcom/android/settingsstock/TetherApnSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/TetherApnSettings;->mTetheringStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settingsstock/TetherApnSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSwitching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settingsstock/TetherApnSettings;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/TetherApnSettings;->updateTetheredState([Ljava/lang/Object;)V

    return-void
.end method

.method private updateTetheredState([Ljava/lang/Object;)V
    .locals 11

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsTetehred:Z

    move-object v0, p1

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsTetehred:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/TetherApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherApnSettings;->getScreenEnableState()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected addMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "20801"

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "23430"

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "23431"

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "23432"

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected addNewApn()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    iget-object v2, p0, Lcom/android/settingsstock/ApnSettings;->mUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "simId"

    iget v2, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "apn_type"

    const-string v2, "tethering"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/TetherApnSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TetherApnSettings;->mTetheringStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getFillListQuery()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" AND type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tethering"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.conn.TETHER_CHANGED_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getScreenEnableState()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingsstock/ApnSettings;->mIsCallStateIdle:Z

    const-string v0, "TetherApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsCallStateIdle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settingsstock/ApnSettings;->mIsCallStateIdle:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAirplaneModeEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsSIMReady :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSIMReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsSwitching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSwitching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsTetehred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsTetehred:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsTetehred:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnSettings;->mIsCallStateIdle:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSIMReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSwitching:Z

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settingsstock/ApnSettings;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/TetherApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mConnManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mUsbRegexs:[Ljava/lang/String;

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSIMReady:Z

    :cond_1
    iput-boolean v2, p0, Lcom/android/settingsstock/ApnSettings;->mIsTetherApn:Z

    sget-object v1, Lcom/android/settingsstock/TetherApnSettings;->PREFER_APN_TETHER_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settingsstock/ApnSettings;->onResume()V

    const-string v1, "TetherApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume , mIsSwitching = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSwitching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mConnManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringChangeDone()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mIsSwitching:Z

    iget-object v1, p0, Lcom/android/settingsstock/TetherApnSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/TetherApnSettings;->updateTetheredState([Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setSelectedApnKey(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/settingsstock/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/TetherApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settingsstock/TetherApnSettings;->PREFER_APN_TETHER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/settingsstock/TetherApnSettings;->PREFER_APN_TETHER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
