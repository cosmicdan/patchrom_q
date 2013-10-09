.class public interface abstract Lcom/android/settingsstock/ext/ISettingsMiscExt;
.super Ljava/lang/Object;
.source "ISettingsMiscExt.java"


# virtual methods
.method public abstract getApnPref(Landroid/preference/PreferenceGroup;I[I)Landroid/preference/Preference;
.end method

.method public abstract getApnUserId()J
.end method

.method public abstract getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResult()Z
.end method

.method public abstract getTetherWifiSSID(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isWifiToggleCouldDisabled(Landroid/content/Context;)Z
.end method

.method public abstract removeTetherApnSettings(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
.end method

.method public abstract setTimeoutPrefTitle(Landroid/preference/Preference;)V
.end method

.method public abstract updateApn(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
