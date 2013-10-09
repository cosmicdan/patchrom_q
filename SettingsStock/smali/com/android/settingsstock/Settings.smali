.class public Lcom/android/settingsstock/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Lcom/android/settingsstock/ButtonBarHandler;
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/Settings$NfcSettingsActivity;,
        Lcom/android/settingsstock/Settings$BeamShareHistoryActivity;,
        Lcom/android/settingsstock/Settings$TetherWifiSettingsActivity;,
        Lcom/android/settingsstock/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/settingsstock/Settings$UsbSettingsActivity;,
        Lcom/android/settingsstock/Settings$HDMISettingsActivity;,
        Lcom/android/settingsstock/Settings$WifiGprsSelectorActivity;,
        Lcom/android/settingsstock/Settings$SimListEntranceActivity;,
        Lcom/android/settingsstock/Settings$SimManagementActivity;,
        Lcom/android/settingsstock/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/settingsstock/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settingsstock/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settingsstock/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settingsstock/Settings$DataUsageSummaryActivity;,
        Lcom/android/settingsstock/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settingsstock/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settingsstock/Settings$AccountSyncSettingsInAddAccountActivity;,
        Lcom/android/settingsstock/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settingsstock/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settingsstock/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/settingsstock/Settings$RunningServicesActivity;,
        Lcom/android/settingsstock/Settings$DockSettingsActivity;,
        Lcom/android/settingsstock/Settings$PrivacySettingsActivity;,
        Lcom/android/settingsstock/Settings$LocationSettingsActivity;,
        Lcom/android/settingsstock/Settings$SecuritySettingsActivity;,
        Lcom/android/settingsstock/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settingsstock/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settingsstock/Settings$StorageUseActivity;,
        Lcom/android/settingsstock/Settings$ManageApplicationsActivity;,
        Lcom/android/settingsstock/Settings$ApplicationSettingsActivity;,
        Lcom/android/settingsstock/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settingsstock/Settings$DisplaySettingsActivity;,
        Lcom/android/settingsstock/Settings$AudioProfileSettingsActivity;,
        Lcom/android/settingsstock/Settings$SoundSettingsActivity;,
        Lcom/android/settingsstock/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settingsstock/Settings$LocalePickerActivity;,
        Lcom/android/settingsstock/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settingsstock/Settings$InputMethodAndSubtypeEnablerActivity;,
        Lcom/android/settingsstock/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settingsstock/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settingsstock/Settings$WifiSettingsActivity;,
        Lcom/android/settingsstock/Settings$StorageSettingsActivity;,
        Lcom/android/settingsstock/Settings$DateTimeSettingsActivity;,
        Lcom/android/settingsstock/Settings$VpnSettingsActivity;,
        Lcom/android/settingsstock/Settings$TetherSettingsActivity;,
        Lcom/android/settingsstock/Settings$WirelessSettingsActivity;,
        Lcom/android/settingsstock/Settings$BluetoothSettingsActivity;,
        Lcom/android/settingsstock/Settings$SimDataRoamingSettings;,
        Lcom/android/settingsstock/Settings$WapPushSettings;,
        Lcom/android/settingsstock/Settings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_CLEAR_UI_OPTIONS:Ljava/lang/String; = "settings:remove_ui_options"

.field private static final IMAGE_GRAY:I = 0x4b

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settingsstock.FRAGMENT_CLASS"

.field private static final META_DATA_KEY_HEADER_ID:Ljava/lang/String; = "com.android.settingsstock.TOP_LEVEL_HEADER_ID"

.field private static final META_DATA_KEY_PARENT_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settingsstock.PARENT_FRAGMENT_CLASS"

.field private static final META_DATA_KEY_PARENT_TITLE:Ljava/lang/String; = "com.android.settingsstock.PARENT_FRAGMENT_TITLE"

.field private static final ORIGINAL_IMAGE:I = 0xff

.field private static final SAVE_KEY_CURRENT_HEADER:Ljava/lang/String; = "com.android.settingsstock.CURRENT_HEADER"

.field private static final SAVE_KEY_PARENT_HEADER:Ljava/lang/String; = "com.android.settingsstock.PARENT_HEADER"


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mIsWifiOnly:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mSiminfoReceiver:Landroid/content/BroadcastReceiver;

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settingsstock/Settings;->SETTINGS_FOR_RESTRICTED:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/Settings;->mIsWifiOnly:Z

    new-instance v0, Lcom/android/settingsstock/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/Settings$1;-><init>(Lcom/android/settingsstock/Settings;)V

    iput-object v0, p0, Lcom/android/settingsstock/Settings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :array_0
    .array-data 0x4
        0x4ft 0x2t 0x8t 0x7ft
        0x51t 0x2t 0x8t 0x7ft
        0x52t 0x2t 0x8t 0x7ft
        0x53t 0x2t 0x8t 0x7ft
        0x55t 0x2t 0x8t 0x7ft
        0x56t 0x2t 0x8t 0x7ft
        0x58t 0x2t 0x8t 0x7ft
        0x59t 0x2t 0x8t 0x7ft
        0x5at 0x2t 0x8t 0x7ft
        0x5ct 0x2t 0x8t 0x7ft
        0x5bt 0x2t 0x8t 0x7ft
        0x5ft 0x2t 0x8t 0x7ft
        0x60t 0x2t 0x8t 0x7ft
        0x61t 0x2t 0x8t 0x7ft
        0x62t 0x2t 0x8t 0x7ft
        0x5dt 0x2t 0x8t 0x7ft
        0x64t 0x2t 0x8t 0x7ft
        0x65t 0x2t 0x8t 0x7ft
        0x66t 0x2t 0x8t 0x7ft
        0x67t 0x2t 0x8t 0x7ft
        0x6bt 0x2t 0x8t 0x7ft
        0x69t 0x2t 0x8t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settingsstock/Settings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/Settings;->updateSimState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingsstock/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/Settings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private getMetaData()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settingsstock.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settingsstock/Settings;->mTopLevelHeaderId:I

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settingsstock.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settingsstock.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settingsstock.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v3, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/Settings;->mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    invoke-virtual {v14}, Lcom/android/settingsstock/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/util/ArrayList;

    array-length v14, v5

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v5

    array-length v12, v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v4, v7, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/Settings;->mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v4}, Lcom/android/settingsstock/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    array-length v14, v6

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settingsstock/Settings;->mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    invoke-virtual {v14, v4}, Lcom/android/settingsstock/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v13, 0x1

    :goto_2
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v14, :cond_1

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    :cond_1
    if-eqz v13, :cond_4

    const v14, 0x7f0b0834

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    const v14, 0x7f0b0834

    iput v14, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    const-class v14, Lcom/android/settingsstock/accounts/AccountSyncSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account"

    const/16 v16, 0x0

    aget-object v16, v6, v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    iput-object v11, v2, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    const-class v14, Lcom/android/settingsstock/accounts/ManageAccountsSettings;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iput-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/Settings;->isMultiPane()Z

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v2, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v15, "account_label"

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v14, Lcom/android/settingsstock/Settings$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settingsstock/Settings$4;-><init>(Lcom/android/settingsstock/Settings;)V

    invoke-static {v3, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceActivity$Header;

    add-int/lit8 v9, p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 p2, v9

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settingsstock/Settings;->mListeningToAccountUpdates:Z

    if-nez v14, :cond_7

    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settingsstock/Settings;->mListeningToAccountUpdates:Z

    :cond_7
    return p2
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/Settings;->mInLocalHeaderSwitch:Z

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/Settings;->mInLocalHeaderSwitch:Z

    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settingsstock.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settingsstock/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v4}, Lcom/android/settingsstock/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    iget v7, p0, Lcom/android/settingsstock/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/settingsstock/Settings;->highlightHeader(I)V

    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v7, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settingsstock.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settingsstock.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/settingsstock/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v9, "show"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/android/settingsstock/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_10

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v8

    const v8, 0x7f080254

    if-eq v4, v8, :cond_1

    const v8, 0x7f08025e

    if-ne v4, v8, :cond_5

    :cond_1
    invoke-static {p0, p1, v1}, Lcom/android/settingsstock/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    :cond_2
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settingsstock/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v8, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_0

    iget-object v8, p0, Lcom/android/settingsstock/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v8, :cond_4

    invoke-static {v1}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v8

    if-eqz v8, :cond_4

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    :cond_4
    iget-object v8, p0, Lcom/android/settingsstock/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const v8, 0x7f080251

    if-ne v4, v8, :cond_6

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.wifi"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const v8, 0x7f080252

    if-ne v4, v8, :cond_7

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    const v8, 0x7f080250

    if-ne v4, v8, :cond_8

    iget-boolean v8, p0, Lcom/android/settingsstock/Settings;->mIsWifiOnly:Z

    if-eqz v8, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    const v8, 0x7f080253

    if-ne v4, v8, :cond_9

    const-string v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v8

    goto/16 :goto_1

    :cond_9
    const v8, 0x7f080264

    if-ne v4, v8, :cond_a

    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/settingsstock/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v3

    goto/16 :goto_1

    :cond_a
    const v8, 0x7f08025d

    if-ne v4, v8, :cond_c

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_b
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    const v8, 0x7f08026a

    if-ne v4, v8, :cond_d

    if-nez v7, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_d
    const v8, 0x7f080257

    if-eq v4, v8, :cond_2

    const v8, 0x7f080258

    if-ne v4, v8, :cond_e

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    const v8, 0x7f080268

    if-ne v4, v8, :cond_2

    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.settingsstock.SCHEDULE_POWER_ON_OFF_SETTING"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "Settings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apps.size()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_f
    const-string v8, "Settings"

    const-string v9, "apps is null or app size is 0, remove SchedulePowerOnOff"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method private updateSimState()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settingsstock/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settingsstock/Settings$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->isSimManagementAvailable(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->invalidateHeaders()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v1

    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_1
    return-object v2

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    move-object v2, v4

    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/Settings;->mFragmentClass:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "com.android.settingsstock.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settingsstock.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settingsstock.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const-class v1, Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/Settings;->mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settingsstock/Settings;->mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settingsstock/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->invalidateHeaders()V

    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f050031

    invoke-virtual {p0, v0, p1}, Lcom/android/settingsstock/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    invoke-direct {p0, p1}, Lcom/android/settingsstock/Settings;->updateHeaderList(Ljava/util/List;)V

    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/settingsstock/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/deviceinfo/Memory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/vpn2/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settingsstock/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-class v1, Lcom/android/settingsstock/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "settings:remove_ui_options"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setUiOptions(I)V

    :cond_0
    new-instance v1, Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    invoke-direct {v1}, Lcom/android/settingsstock/accounts/AuthenticatorHelper;-><init>()V

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p0}, Lcom/android/settingsstock/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p0, v5}, Lcom/android/settingsstock/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    const-string v1, "development"

    invoke-virtual {p0, v1, v3}, Lcom/android/settingsstock/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingsstock/Settings;->mIsWifiOnly:Z

    invoke-direct {p0}, Lcom/android/settingsstock/Settings;->getMetaData()V

    iput-boolean v2, p0, Lcom/android/settingsstock/Settings;->mInLocalHeaderSwitch:Z

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/android/settingsstock/Settings;->mInLocalHeaderSwitch:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settingsstock/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v1}, Lcom/android/settingsstock/Settings;->highlightHeader(I)V

    const v1, 0x7f0b034e

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/Settings;->setTitle(I)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "com.android.settingsstock.CURRENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    const-string v1, "com.android.settingsstock.PARENT_HEADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v5}, Lcom/android/settingsstock/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/settingsstock/Settings$2;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/Settings$2;-><init>(Lcom/android/settingsstock/Settings;)V

    invoke-virtual {p0, v1, v5, v2}, Lcom/android/settingsstock/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_5
    return-void

    :cond_6
    move v1, v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/settingsstock/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f080265

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/Settings;->highlightHeader(I)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/settingsstock/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settingsstock/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settingsstock/Settings$HeaderAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->pause()V

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settingsstock/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settingsstock/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v3, 0x7f0b0519

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settingsstock/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settingsstock/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    const v3, 0x7f0b037b

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    new-instance v1, Lcom/android/settingsstock/Settings$3;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/Settings$3;-><init>(Lcom/android/settingsstock/Settings;)V

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settingsstock/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settingsstock/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settingsstock/Settings$HeaderAdapter;

    invoke-virtual {v1}, Lcom/android/settingsstock/Settings$HeaderAdapter;->resume()V

    check-cast v0, Lcom/android/settingsstock/Settings$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->isSimManagementAvailable(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->invalidateHeaders()V

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settingsstock/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settingsstock/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    const-string v0, "com.android.settingsstock.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    const-string v0, "com.android.settingsstock.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settingsstock/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/Settings;->mAuthenticatorHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settingsstock/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settingsstock/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settingsstock/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/settingsstock/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, p0, Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    return-void
.end method
