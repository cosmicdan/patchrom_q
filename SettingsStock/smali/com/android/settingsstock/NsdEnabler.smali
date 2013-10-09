.class public Lcom/android/settingsstock/NsdEnabler;
.super Ljava/lang/Object;
.source "NsdEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mNsdManager:Landroid/net/nsd/NsdManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingsstock/NsdEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/NsdEnabler$1;-><init>(Lcom/android/settingsstock/NsdEnabler;)V

    iput-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settingsstock/NsdEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingsstock/NsdEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mContext:Landroid/content/Context;

    const-string v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mNsdManager:Landroid/net/nsd/NsdManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.nsd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/NsdEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/NsdEnabler;->handleNsdStateChanged(I)V

    return-void
.end method

.method private handleNsdStateChanged(I)V
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingsstock/NsdEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settingsstock/NsdEnabler;->mNsdManager:Landroid/net/nsd/NsdManager;

    invoke-virtual {v1, v0}, Landroid/net/nsd/NsdManager;->setEnabled(Z)V

    return v2
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/NsdEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingsstock/NsdEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingsstock/NsdEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settingsstock/NsdEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
