.class public Lcom/android/settingsstock/SoundSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DIALOG_NOT_DOCKED:I = 0x1

.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final KEY_CATEGORY_CALLS:Ljava/lang/String; = "category_calls_and_notification"

.field private static final KEY_DOCK_AUDIO_MEDIA_ENABLED:Ljava/lang/String; = "dock_audio_media_enabled"

.field private static final KEY_DOCK_AUDIO_SETTINGS:Ljava/lang/String; = "dock_audio"

.field private static final KEY_DOCK_CATEGORY:Ljava/lang/String; = "dock_category"

.field private static final KEY_DOCK_SOUNDS:Ljava/lang/String; = "dock_sounds"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_MUSICFX:Ljava/lang/String; = "musicfx"

.field private static final KEY_NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SoundSettings"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

.field private mDockAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingsstock/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/SoundSettings$1;-><init>(Lcom/android/settingsstock/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/SoundSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/SoundSettings$2;-><init>(Lcom/android/settingsstock/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/SoundSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/SoundSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/SoundSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingsstock/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingsstock/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0508

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0509

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    :goto_0
    iput-object p1, p0, Lcom/android/settingsstock/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settingsstock/SoundSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const-string v3, "dock_audio_media_enabled"

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private initDockSettings()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settingsstock/SoundSettings;->needsDockSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settingsstock/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settingsstock/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_category"

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_audio"

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_sounds"

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v1, "dock_audio_media_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private lookupRingtoneNames()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settingsstock/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x104040a

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_3

    const v0, 0x1040408

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settingsstock/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settingsstock/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b0934

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const-string v12, "audio"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioManager;

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const v12, 0x7f050038

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->addPreferencesFromResource(I)V

    const/4 v12, 0x2

    if-eq v12, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v13, "emergency_tone"

    invoke-virtual {p0, v13}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090001

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "ring_volume"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_1
    const-string v12, "vibrate_when_ringing"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v13, p0, Lcom/android/settingsstock/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const-string v12, "vibrate_when_ringing"

    const/4 v14, 0x0

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v12, "dtmf_tone"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v13, p0, Lcom/android/settingsstock/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v12, "dtmf_tone"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v12, "sound_effects"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v13, p0, Lcom/android/settingsstock/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v12, "sound_effects_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v12, "haptic_feedback"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v13, p0, Lcom/android/settingsstock/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v12, "haptic_feedback_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v12, "lock_sounds"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v13, p0, Lcom/android/settingsstock/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v12, "lockscreen_sounds_enabled"

    const/4 v14, 0x1

    invoke-static {v9, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v12, "ringtone"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    const-string v12, "notification_sound"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    const-string v12, "vibrator"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    const-string v12, "vibrate_when_ringing"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->removePreference(Ljava/lang/String;)V

    const-string v12, "haptic_feedback"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settingsstock/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "vibrate_when_ringing"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    const/4 v12, 0x2

    if-ne v12, v0, :cond_5

    const-string v12, "emergency_tone"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    const-string v12, "emergency_tone"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    const-string v12, "sound_settings"

    invoke-virtual {p0, v12}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceGroup;

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v13, "musicfx"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v12, 0x200

    invoke-virtual {v6, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_6

    iget-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v13, p0, Lcom/android/settingsstock/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settingsstock/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_d

    sget-object v1, Lcom/android/settingsstock/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_d

    aget-object v8, v1, v4

    invoke-virtual {p0, v8}, Lcom/android/settingsstock/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_d
    new-instance v12, Lcom/android/settingsstock/SoundSettings$3;

    invoke-direct {v12, p0}, Lcom/android/settingsstock/SoundSettings$3;-><init>(Lcom/android/settingsstock/SoundSettings;)V

    iput-object v12, p0, Lcom/android/settingsstock/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/settingsstock/SoundSettings;->initDockSettings()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/SoundSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "emergency_tone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string v3, "SoundSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibrate_when_ringing"

    iget-object v9, p0, Lcom/android/settingsstock/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v6

    :cond_0
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    move v5, v6

    :cond_2
    return v5

    :cond_3
    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_5

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dtmf_tone"

    iget-object v9, p0, Lcom/android/settingsstock/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_4

    move v5, v6

    :cond_4
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_8

    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->loadSoundEffects()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sound_effects_enabled"

    iget-object v9, p0, Lcom/android/settingsstock/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_6

    move v5, v6

    :cond_6
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_a

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "haptic_feedback_enabled"

    iget-object v9, p0, Lcom/android/settingsstock/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_9

    move v5, v6

    :cond_9
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_c

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen_sounds_enabled"

    iget-object v9, p0, Lcom/android/settingsstock/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_b

    move v5, v6

    :cond_b
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-eq p2, v7, :cond_2

    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-ne p2, v7, :cond_12

    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    if-nez v0, :cond_e

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/SoundSettings;->showDialog(I)V

    goto/16 :goto_0

    :cond_d
    move v0, v5

    goto :goto_2

    :cond_e
    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    if-eqz v7, :cond_f

    move v3, v6

    :goto_3
    if-eqz v3, :cond_10

    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settingsstock/SoundSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, "com.android.settingsstock.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v7, Lcom/android/settingsstock/bluetooth/DockEventReceiver;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    move v3, v5

    goto :goto_3

    :cond_10
    iget-object v4, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    check-cast v4, Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "checked"

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dock_audio_media_enabled"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_11

    move v5, v6

    :cond_11
    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, v4, v4}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_12
    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_14

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dock_sounds_enabled"

    iget-object v9, p0, Lcom/android/settingsstock/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_13

    move v5, v6

    :cond_13
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    iget-object v7, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dock_audio_media_enabled"

    iget-object v9, p0, Lcom/android/settingsstock/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_15

    move v5, v6

    :cond_15
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settingsstock/SoundSettings;->lookupRingtoneNames()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
