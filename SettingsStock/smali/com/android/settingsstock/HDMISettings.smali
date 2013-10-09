.class public Lcom/android/settingsstock/HDMISettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "HDMISettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final HDMI_VIDEO_RESOLUTION_DEFAULT:I = 0x2

.field private static final KEY_TOGGLE_AUDIO:Ljava/lang/String; = "audio_toggler"

.field private static final KEY_TOGGLE_HDMI:Ljava/lang/String; = "hdmi_toggler"

.field private static final KEY_TOGGLE_VIDEO:Ljava/lang/String; = "video_toggler"

.field private static final KEY_VIDEO_RESOLUTION:Ljava/lang/String; = "video_resolution"

.field private static final KEY_VIDEO_RESOLUTION_8193:Ljava/lang/String; = "video_resolution_8193"

.field private static final TAG:Ljava/lang/String; = "hdmi"


# instance fields
.field private defaultResolutionEntries:[Ljava/lang/CharSequence;

.field private defaultResolutionValues:[Ljava/lang/CharSequence;

.field private mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

.field private mHDMIServiceConn:Landroid/content/ServiceConnection;

.field private mIsHDMIEnabled:Z

.field mLocalServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleAudioPref:Landroid/preference/CheckBoxPreference;

.field private mToggleHDMIPref:Landroid/preference/CheckBoxPreference;

.field private mToggleVideoPref:Landroid/preference/CheckBoxPreference;

.field private mVideoResolutionPref:Landroid/preference/ListPreference;

.field private mVideoResolutionPrefTemp:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/HDMISettings;->mIsHDMIEnabled:Z

    new-instance v0, Lcom/android/settingsstock/HDMISettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/HDMISettings$1;-><init>(Lcom/android/settingsstock/HDMISettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settingsstock/HDMISettings$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/HDMISettings$2;-><init>(Lcom/android/settingsstock/HDMISettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/HDMISettings;->mLocalServiceReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settingsstock/HDMISettings;Lcom/mediatek/hdmi/HDMILocalService;)Lcom/mediatek/hdmi/HDMILocalService;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingsstock/HDMISettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/HDMISettings;->updateSettingsItemEnableStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/HDMISettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/HDMISettings;->updateSelectedResolution()V

    return-void
.end method

.method private updatePref()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "hdmi_enable_status"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settingsstock/HDMISettings;->mIsHDMIEnabled:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "hdmi_audio_status"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v0, v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "hdmi_video_status"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v1, v3

    :goto_2
    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleHDMIPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settingsstock/HDMISettings;->mIsHDMIEnabled:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleAudioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleAudioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleVideoPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleVideoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/HDMISettings;->updateSelectedResolution()V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2
.end method

.method private updateSelectedResolution()V
    .locals 10

    const/4 v9, 0x0

    const-string v7, "hdmi"

    const-string v8, "HDMISettings>>updateSelectedResolution()"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    if-nez v7, :cond_1

    const-string v7, "hdmi"

    const-string v8, "HDMISettings>>updateSelectedResolution(), service have not been connected, wait"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hdmi_video_resolution"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x0

    :goto_1
    array-length v7, v4

    if-ge v0, v7, :cond_2

    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v0

    :cond_2
    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    iget-object v7, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string v7, "hdmi"

    const-string v8, " set HDMI video resolution to default value, the first one"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v7, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    aget-object v8, v4, v9

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/mediatek/hdmi/HDMILocalService;->setVideoResolution(I)Z

    goto :goto_0
.end method

.method private updateSettingsItemEnableStatus()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "hdmi"

    const-string v5, "HDMISettings>>updateSettingsItemEnableStatus()"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    if-nez v2, :cond_0

    const-string v2, "hdmi"

    const-string v3, "HDMI service has not connected, wait"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    invoke-virtual {v2}, Lcom/mediatek/hdmi/HDMILocalService;->isCablePluged()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "hdmi_enable_status"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settingsstock/HDMISettings;->mIsHDMIEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/android/settingsstock/HDMISettings;->mIsHDMIEnabled:Z

    if-eqz v2, :cond_4

    move v1, v3

    :goto_2
    const-string v2, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is cable pluged?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isHDMIEnabled?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settingsstock/HDMISettings;->mIsHDMIEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleAudioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleAudioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleVideoPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleVideoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "hdmi"

    const-string v3, ">>HDMISettings.onCreate()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f05001b

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/HDMISettings;->addPreferencesFromResource(I)V

    const-string v2, "hdmi_toggler"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/HDMISettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleHDMIPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleHDMIPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "audio_toggler"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/HDMISettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleAudioPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleAudioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "video_toggler"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/HDMISettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleVideoPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleVideoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "hdmi"

    const-string v3, "It is not MT8193"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "video_resolution"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/HDMISettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "video_resolution_8193"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/HDMISettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPrefTemp:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPrefTemp:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/mediatek/hdmi/HDMILocalService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIServiceConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "hdmi"

    const-string v3, "HDMISettings fail to bind HDMI service"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleHDMIPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleAudioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleVideoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mVideoResolutionPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleAudioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mToggleAudioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/HDMISettings;->mToggleVideoPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mToggleVideoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.mediatek.hdmi.localservice.action.CABLE_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mLocalServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/HDMISettings;->mLocalServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    if-nez v3, :cond_0

    const-string v3, "hdmi"

    const-string v4, "HDMISettings  -- Connection to HDMI local service have not been established."

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    const-string v3, "hdmi_toggler"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    invoke-virtual {v3, v0}, Lcom/mediatek/hdmi/HDMILocalService;->enableHDMI(Z)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hdmi_enable_status"

    if-eqz v0, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settingsstock/HDMISettings;->updateSettingsItemEnableStatus()V

    :cond_1
    :goto_2
    move v5, v4

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    const-string v3, "audio_toggler"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    invoke-virtual {v3, v0}, Lcom/mediatek/hdmi/HDMILocalService;->enableAudio(Z)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "hdmi_audio_status"

    if-eqz v0, :cond_4

    move v5, v4

    :cond_4
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    const-string v3, "video_toggler"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    invoke-virtual {v3, v0}, Lcom/mediatek/hdmi/HDMILocalService;->enableVideo(Z)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "hdmi_video_status"

    if-eqz v0, :cond_6

    move v5, v4

    :cond_6
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    const-string v3, "video_resolution"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v5, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HDMISettings  -- key: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " newValue: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/mediatek/hdmi/HDMILocalService;->setVideoResolution(I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "hdmi_video_resolution"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_8
    const-string v3, "video_resolution_8193"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v6, "hdmi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HDMISettings  -- key: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " newValue: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const-string v3, "100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    sget-object v3, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    sget-object v3, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v3, v3, v5

    shr-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    if-ne v4, v3, :cond_a

    const-string v2, "102"

    :cond_9
    :goto_3
    const-string v3, "hdmi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final resolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/mediatek/hdmi/HDMILocalService;->setVideoResolution(I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/HDMISettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "hdmi_video_resolution"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    sget-object v3, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0xb

    and-int/lit8 v3, v3, 0x1

    if-ne v4, v3, :cond_b

    const-string v2, "103"

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    sget-object v3, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v3, v3, v5

    and-int/lit8 v3, v3, 0x1

    if-ne v4, v3, :cond_c

    const-string v2, "100"

    goto :goto_3

    :cond_c
    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    sget-object v3, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0x1

    if-ne v4, v3, :cond_9

    const-string v2, "101"

    goto :goto_3

    :cond_d
    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    sget-object v3, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v3, v3, v5

    shr-int/lit8 v3, v3, 0x15

    and-int/lit8 v3, v3, 0x1

    if-ne v4, v3, :cond_e

    const-string v2, "9"

    :cond_e
    iget-object v3, p0, Lcom/android/settingsstock/HDMISettings;->mHDMIService:Lcom/mediatek/hdmi/HDMILocalService;

    sget-object v3, Lcom/mediatek/hdmi/HDMILocalService;->sEdid:[I

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x14

    and-int/lit8 v3, v3, 0x1

    if-ne v4, v3, :cond_9

    const-string v2, "8"

    goto :goto_3
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/HDMISettings;->updatePref()V

    invoke-direct {p0}, Lcom/android/settingsstock/HDMISettings;->updateSettingsItemEnableStatus()V

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
