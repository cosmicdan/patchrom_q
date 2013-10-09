.class public Lcom/android/settingsstock/DrmSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "DrmSettings.java"


# static fields
.field private static final DIALOG_RESET:I = 0x3e8

.field private static final DRM_RESET:Ljava/lang/String; = "drm_settings"

.field private static final TAG:Ljava/lang/String; = "DrmSettings"

.field private static sClient:Landroid/drm/DrmManagerClient;

.field private static sPreferenceReset:Landroid/preference/Preference;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/drm/DrmManagerClient;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/DrmSettings;->sClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$002(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0

    sput-object p0, Lcom/android/settingsstock/DrmSettings;->sClient:Landroid/drm/DrmManagerClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/DrmSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DrmSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/preference/Preference;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/DrmSettings;->sPreferenceReset:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DrmSettings;->addPreferencesFromResource(I)V

    const-string v0, "drm_settings"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DrmSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/DrmSettings;->sPreferenceReset:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DrmSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/DrmSettings;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/android/settingsstock/DrmSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingsstock/DrmSettings;->sClient:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settingsstock/DrmSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DrmSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/DrmSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/settingsstock/DrmSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settingsstock/DrmSettings$1;-><init>(Lcom/android/settingsstock/DrmSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingsstock/DrmSettings;->sClient:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    sget-object v0, Lcom/android/settingsstock/DrmSettings;->sPreferenceReset:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DrmSettings;->showDialog(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
