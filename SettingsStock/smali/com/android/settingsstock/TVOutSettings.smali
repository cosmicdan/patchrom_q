.class public Lcom/android/settingsstock/TVOutSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "TVOutSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_TVOUT_ENABLE:Ljava/lang/String; = "tvout_enable"

.field private static final KEY_TV_SYSTEM:Ljava/lang/String; = "tv_system"

.field private static final PROFILE_TV_OUT_SETTINGS:Ljava/lang/String; = "tv_out"

.field private static final TAG:Ljava/lang/String; = "TV_OUT"

.field private static sIsFirst:Z

.field private static sIsFirstFire:Z

.field private static sNeedUserEnable:Z


# instance fields
.field private mEnablePreference:Landroid/preference/CheckBoxPreference;

.field private mTVSystem:Landroid/preference/ListPreference;

.field private mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingsstock/TVOutSettings;->sIsFirst:Z

    sput-boolean v0, Lcom/android/settingsstock/TVOutSettings;->sIsFirstFire:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settingsstock/TVOutSettings;->sNeedUserEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f050042

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/TVOutSettings;->addPreferencesFromResource(I)V

    iget-object v1, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    if-nez v1, :cond_0

    const-class v1, Lcom/mediatek/common/tvout/ITVOUTNative;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/tvout/ITVOUTNative;

    iput-object v1, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    :cond_0
    const-string v1, "tvout_enable"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/TVOutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settingsstock/TVOutSettings;->mEnablePreference:Landroid/preference/CheckBoxPreference;

    const-string v1, "tv_system"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/TVOutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settingsstock/TVOutSettings;->mTVSystem:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    invoke-interface {v1}, Lcom/mediatek/common/tvout/ITVOUTNative;->isShowButton()Z

    move-result v1

    sput-boolean v1, Lcom/android/settingsstock/TVOutSettings;->sNeedUserEnable:Z

    sget-boolean v1, Lcom/android/settingsstock/TVOutSettings;->sNeedUserEnable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/TVOutSettings;->mEnablePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "TV_OUT"

    const-string v2, "[TVOUT] enable button "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/TVOutSettings;->mTVSystem:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-boolean v1, Lcom/android/settingsstock/TVOutSettings;->sIsFirst:Z

    if-eqz v1, :cond_2

    const-string v1, "TV_OUT"

    const-string v2, "First launch"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/TVOutSettings;->mEnablePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    sput-boolean v3, Lcom/android/settingsstock/TVOutSettings;->sIsFirst:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/TVOutSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    sget-boolean v1, Lcom/android/settingsstock/TVOutSettings;->sNeedUserEnable:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/TVOutSettings;->mEnablePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v1, "TV_OUT"

    const-string v2, "[TVOUT] no enable button ,remove"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/android/settingsstock/TVOutSettings;->sNeedUserEnable:Z

    if-eqz v3, :cond_0

    const-string v3, "tvout_enable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    invoke-interface {v3, v6}, Lcom/mediatek/common/tvout/ITVOUTNative;->enableTvOut(Z)Z

    :cond_0
    :goto_0
    const-string v3, "tv_system"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/TVOutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "tv_out"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "tv_system"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "NTSC"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    invoke-interface {v3, v6}, Lcom/mediatek/common/tvout/ITVOUTNative;->setTvSystem(I)Z

    :goto_1
    iget-object v3, p0, Lcom/android/settingsstock/TVOutSettings;->mTVSystem:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return v7

    :cond_2
    sget-boolean v3, Lcom/android/settingsstock/TVOutSettings;->sIsFirstFire:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/TVOutSettings;->mTVSystem:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TV_OUT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First enable, system type is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "NTSC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    invoke-interface {v3, v6}, Lcom/mediatek/common/tvout/ITVOUTNative;->setTvSystem(I)Z

    :goto_2
    sput-boolean v6, Lcom/android/settingsstock/TVOutSettings;->sIsFirstFire:Z

    :cond_3
    iget-object v3, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    invoke-interface {v3, v7}, Lcom/mediatek/common/tvout/ITVOUTNative;->enableTvOut(Z)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    invoke-interface {v3, v7}, Lcom/mediatek/common/tvout/ITVOUTNative;->setTvSystem(I)Z

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/settingsstock/TVOutSettings;->mTvOut:Lcom/mediatek/common/tvout/ITVOUTNative;

    invoke-interface {v3, v7}, Lcom/mediatek/common/tvout/ITVOUTNative;->setTvSystem(I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settingsstock/TVOutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "tv_out"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "tv_system"

    const-string v3, "NTSC"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TV_OUT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume, tv system is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/TVOutSettings;->mTVSystem:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingsstock/TVOutSettings;->mTVSystem:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
