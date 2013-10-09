.class public Lcom/android/settingsstock/DateTimeSettings;
.super Lcom/android/settingsstock/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final AUTO_TIME_GPS_INDEX:I = 0x1

.field private static final AUTO_TIME_NETWORK_INDEX:I = 0x0

.field private static final AUTO_TIME_OFF_INDEX:I = 0x2

.field private static final DIALOG_DATEPICKER:I = 0x0

.field private static final DIALOG_GPS_CONFIRM:I = 0x2

.field private static final DIALOG_TIMEPICKER:I = 0x1

.field protected static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final KEY_AUTO_TIME:Ljava/lang/String; = "auto_time_list"

.field private static final KEY_AUTO_TIME_ZONE:Ljava/lang/String; = "auto_zone"

.field private static final KEY_DATE_FORMAT:Ljava/lang/String; = "date_format"

.field private static final TAG:Ljava/lang/String; = "DateTimeSettings"


# instance fields
.field private mAutoTimePref:Landroid/preference/ListPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settingsstock/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DateTimeSettings$1;-><init>(Lcom/android/settingsstock/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/DateTimeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DateTimeSettings;->updateDateFormatEntries()V

    return-void
.end method

.method private static formatOffset(Ljava/lang/StringBuilder;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/StringBuilder;
    .locals 5

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v2, v3, 0x3c

    const-string v3, "GMT"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v2, :cond_0

    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v2, v2

    :goto_0
    div-int/lit8 v0, v2, 0x3c

    rem-int/lit8 v1, v2, 0x3c

    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0

    :cond_0
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p0, v0}, Lcom/android/settingsstock/DateTimeSettings;->formatOffset(Ljava/lang/StringBuilder;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initUI()V
    .locals 15

    const-string v11, "auto_time"

    invoke-direct {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    const-string v11, "auto_time_zone"

    invoke-direct {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v3

    const-string v11, "auto_time_gps"

    invoke-direct {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v11, "firstRun"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const-string v11, "auto_time_list"

    invoke-virtual {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    iget-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :goto_0
    iget-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v11, "auto_zone"

    invoke-virtual {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v3, 0x0

    :cond_1
    iget-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v11, "time"

    invoke-virtual {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    const-string v11, "24 hour"

    invoke-virtual {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    const-string v11, "timezone"

    invoke-virtual {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    const-string v11, "date"

    invoke-virtual {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    const-string v11, "date_format"

    invoke-virtual {p0, v11}, Lcom/android/settingsstock/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settingsstock/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settingsstock/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    array-length v11, v5

    new-array v7, v11, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    const/4 v8, 0x0

    :goto_1
    array-length v11, v7

    if-ge v8, v11, :cond_7

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    aget-object v12, v5, v8

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settingsstock/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aget-object v11, v5, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b02f7

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    :cond_6
    aput-object v6, v7, v8

    goto :goto_2

    :cond_7
    iget-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v11, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v12, 0x7f070001

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v11, p0, Lcom/android/settingsstock/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v11, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    const/4 v0, 0x1

    :goto_3
    iget-object v12, p0, Lcom/android/settingsstock/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_a

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v12, p0, Lcom/android/settingsstock/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_b

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v12, p0, Lcom/android/settingsstock/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v3, :cond_c

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    :cond_b
    const/4 v11, 0x0

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    goto :goto_6
.end method

.method private is24Hour()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private reSetAutoTimePref()V
    .locals 4

    const-string v2, "DateTimeSettings"

    const-string v3, "reset AutoTimePref as cancel the selection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "auto_time"

    invoke-direct {p0, v2}, Lcom/android/settingsstock/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "auto_time_gps"

    invoke-direct {p0, v2}, Lcom/android/settingsstock/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method private set24Hour(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(III)V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_0
    return-void
.end method

.method private setDateRange(Landroid/app/DatePickerDialog;)V
    .locals 13

    if-eqz p1, :cond_0

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x7b2

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    const/16 v2, 0x3b

    const/16 v3, 0x3b

    const/16 v4, 0x17

    const/16 v5, 0x1f

    const/16 v6, 0xb

    const/16 v7, 0x7f5

    move-object v1, v10

    invoke-virtual/range {v1 .. v7}, Landroid/text/format/Time;->set(IIIIII)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const-wide/16 v1, 0x3e7

    add-long/2addr v8, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/widget/DatePicker;->setMinDate(J)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/widget/DatePicker;->setMaxDate(J)V

    :cond_0
    return-void
.end method

.method static setTime(II)V
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    :cond_0
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateDateFormatEntries()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b02f7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aput-object v1, v2, v3

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "DateTimeSettings"

    const-string v1, "onCancel Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/DateTimeSettings;->reSetAutoTimePref()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    const-string v1, "DateTimeSettings"

    const-string v2, "Enable GPS time sync"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    const-string v1, "DateTimeSettings"

    const-string v2, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/DateTimeSettings;->reSetAutoTimePref()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "DateTimeSettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DateTimeSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settingsstock/DateTimeSettings;->initUI()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    move-object v1, v0

    check-cast v1, Landroid/app/DatePickerDialog;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/DateTimeSettings;->setDateRange(Landroid/app/DatePickerDialog;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v7, 0x7f0b00c7

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b030a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const v7, 0x7f0b00c8

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    invoke-static {p2, p3, p4}, Lcom/android/settingsstock/DateTimeSettings;->setDate(III)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settingsstock/DateTimeSettings;->updateDateFormatEntries()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DateTimeSettings;->showDialog(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/DateTimeSettings;->removeDialog(I)V

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/DateTimeSettings;->set24Hour(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settingsstock/DateTimeSettings;->timeUpdated()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settingsstock/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settingsstock/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settingsstock/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settingsstock/DateTimeSettings;->updateDateFormatEntries()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v5, "date_format"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "auto_time_list"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/android/settingsstock/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "auto_time"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "auto_time_gps"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v8, p0, Lcom/android/settingsstock/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-ne v3, v6, :cond_3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/settingsstock/DateTimeSettings;->showDialog(I)V

    invoke-virtual {p0, p0}, Lcom/android/settingsstock/DateTimeSettings;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "auto_time"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "auto_time_gps"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v5, v7

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_3

    :cond_6
    const-string v5, "auto_zone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_7

    move v5, v6

    :goto_4
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settingsstock/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_8

    :goto_5
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    move v5, v7

    goto :goto_4

    :cond_8
    move v6, v7

    goto :goto_5
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    invoke-static {p2, p3}, Lcom/android/settingsstock/DateTimeSettings;->setTime(II)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingsstock/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingsstock/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
