.class public Lcom/android/settingsstock/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field private static final DIALOG_CONFIRM_CHANGE:I = 0x1

.field private static final ERROR_DIALOG_ID:I = 0x0

.field private static final GEMINI_PHONE:Z = true

.field private static final ID_INDEX:I = 0x0

.field private static final KEY_APN_TYPE_LIST:Ljava/lang/String; = "apn_type_list"

.field private static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field private static final KEY_BEARER:Ljava/lang/String; = "bearer"

.field private static final KEY_CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final KEY_PROTOCOL:Ljava/lang/String; = "apn_protocol"

.field private static final KEY_ROAMING_PROTOCOL:Ljava/lang/String; = "apn_roaming_protocol"

.field private static final MCC_INDEX:I = 0x9

.field private static final MENU_CANCEL:I = 0x3

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x13

.field private static final SAVED_POS:Ljava/lang/String; = "pos"

.field private static final SERVER_INDEX:I = 0x6

.field private static final SIM_CARD_SINGLE:I = 0x0

.field private static final SOURCE_TYPE_DEFAULT:I = 0x0

.field private static final SOURCE_TYPE_INDEX:I = 0x14

.field private static final SOURCE_TYPE_OMACP:I = 0x2

.field private static final SOURCE_TYPE_USER_EDIT:I = 0x1

.field private static final SS_TAG:Ljava/lang/String; = "ssr"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_INDEX:I = 0x5

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDualSimMode:I

.field mExt:Lcom/android/settingsstock/ext/IApnEditorExt;

.field private mFirstTime:Z

.field private mIMSI:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsCallStateIdle:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mNotInMmsTransaction:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPnn:Ljava/lang/String;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProviderUri:Landroid/net/Uri;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mReadOnlyMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSimId:I

.field private mSourceType:I

.field private mSpn:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/settingsstock/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingsstock/ApnEditor;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput v0, p0, Lcom/android/settingsstock/ApnEditor;->mSourceType:I

    iput-boolean v2, p0, Lcom/android/settingsstock/ApnEditor;->mIsCallStateIdle:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnEditor;->mAirplaneModeEnabled:Z

    iput v0, p0, Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I

    iput-boolean v2, p0, Lcom/android/settingsstock/ApnEditor;->mNotInMmsTransaction:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnEditor;->mReadOnlyMode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mSpn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mIMSI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mPnn:Ljava/lang/String;

    new-instance v0, Lcom/android/settingsstock/ApnEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/ApnEditor$1;-><init>(Lcom/android/settingsstock/ApnEditor;)V

    iput-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/ApnEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/ApnEditor$2;-><init>(Lcom/android/settingsstock/ApnEditor;)V

    iput-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settingsstock/ApnEditor$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/ApnEditor$3;-><init>(Lcom/android/settingsstock/ApnEditor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/ApnEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settingsstock/ApnEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/ApnEditor;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settingsstock/ApnEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->radioOffExit()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settingsstock/ApnEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->setIMSI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settingsstock/ApnEditor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mPnn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settingsstock/ApnEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->setPnn()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settingsstock/ApnEditor;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/ApnEditor;->mSimId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settingsstock/ApnEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/ApnEditor;->mIsCallStateIdle:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/settingsstock/ApnEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/ApnEditor;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settingsstock/ApnEditor;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settingsstock/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settingsstock/ApnEditor;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/ApnEditor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settingsstock/ApnEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->fillUi()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settingsstock/ApnEditor;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/settingsstock/ApnEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/ApnEditor;->mNotInMmsTransaction:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settingsstock/ApnEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->setScreenEnabledStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingsstock/ApnEditor;)Lcom/android/settingsstock/ApnTypePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/ApnEditor;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settingsstock/ApnEditor;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/ApnEditor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settingsstock/ApnEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->setSpn()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settingsstock/ApnEditor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settingsstock/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f070032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settingsstock/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object p1, Lcom/android/settingsstock/ApnEditor;->sNotSet:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->finish()V

    return-void
.end method

.method private fillUi()V
    .locals 13

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v9, p0, Lcom/android/settingsstock/ApnEditor;->mFirstTime:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settingsstock/ApnEditor;->mFirstTime:Z

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x5

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v11, 0x7

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xc

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xd

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x8

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xa

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x9

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/settingsstock/ApnTypePreference;->setType(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    invoke-direct {p0, v7}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settingsstock/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    invoke-virtual {v9, v7}, Lcom/android/settingsstock/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/android/settingsstock/ApnEditor;->mSimId:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const-string v6, "gsm.sim.operator.numeric.2"

    :goto_1
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settingsstock/ApnEditor;->mCurMnc:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settingsstock/ApnEditor;->mCurMcc:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "apn_type"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "tethering"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    const-string v10, "tethering"

    invoke-virtual {v9, v10}, Lcom/android/settingsstock/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    const-string v10, "tethering"

    invoke-virtual {v9, v10}, Lcom/android/settingsstock/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xe

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_6

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :goto_3
    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x10

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x13

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v10, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0x12

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x14

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, p0, Lcom/android/settingsstock/ApnEditor;->mSourceType:I

    :cond_3
    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f07002e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v10, v8, v2

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settingsstock/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v10, v11}, Lcom/android/settingsstock/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    const-string v6, "gsm.sim.operator.numeric"

    goto/16 :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Lcom/android/settingsstock/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Lcom/android/settingsstock/ApnTypePreference;->intCheckState(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_8
    iget-object v9, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v10, Lcom/android/settingsstock/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b05ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b05ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b05af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b05b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isMMSNotTransaction()Z
    .locals 7

    const/4 v1, 0x1

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f070030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private radioOffExit()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->finish()V

    return-void
.end method

.method private setIMSI()V
    .locals 5

    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget v2, p0, Lcom/android/settingsstock/ApnEditor;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mIMSI:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/ApnEditor;->mIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPnn()V
    .locals 4

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settingsstock/ApnEditor;->mSimId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mPnn:Ljava/lang/String;

    sget-object v1, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPnn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/ApnEditor;->mPnn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setScreenEnabledStatus()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mReadOnlyMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------mReadOnlyMode is true -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mAirplaneModeEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------mAirplaneModeEnabled is true -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mNotInMmsTransaction:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------!mNotInMmsTransaction is true -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "-----------mDualSimMode is 0 -----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mReadOnlyMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mNotInMmsTransaction:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSpn()V
    .locals 5

    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget v2, p0, Lcom/android/settingsstock/ApnEditor;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mSpn:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/ApnEditor;->mSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/settingsstock/ApnEditor;->sNotSet:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    const/16 v2, 0x2a

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 14

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    if-nez p1, :cond_0

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/settingsstock/ApnEditor;->showDialog(I)V

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    if-nez v10, :cond_1

    sget-object v10, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v10, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "name"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_4

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b080d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "apn"

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "proxy"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "port"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "mmsproxy"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "mmsport"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "user"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "server"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "password"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "mmsc"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    iget v10, p0, Lcom/android/settingsstock/ApnEditor;->mSimId:I

    invoke-interface {v8, v10}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    if-eqz v4, :cond_5

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mIMSI:Ljava/lang/String;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mIMSI:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "imsi"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mIMSI:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v10, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    const-string v10, "protocol"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "roaming_protocol"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "type"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    invoke-virtual {v11}, Lcom/android/settingsstock/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "carrier_enabled"

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "mcc"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "mnc"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "numeric"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "current"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v10, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget-boolean v10, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    if-eqz v10, :cond_9

    const-string v10, "sourcetype"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v10, :cond_a

    sget-object v10, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "former inserted URI was already deleted, insert a new one"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    :cond_a
    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    sget-object v10, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v11, "RemoteException"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mSpn:Ljava/lang/String;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/settingsstock/ApnEditor;->mSpn:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "spn"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mSpn:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v10, "pnn"

    iget-object v11, p0, Lcom/android/settingsstock/ApnEditor;->mPnn:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settingsstock/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b058f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settingsstock/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    const-string v2, "apn_type_list"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/ApnTypePreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    invoke-virtual {v2, p0}, Lcom/android/settingsstock/ApnTypePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    const-string v2, "bearer"

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settingsstock/ApnEditor;->mFirstTime:Z

    const-string v2, "simId"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settingsstock/ApnEditor;->mSimId:I

    iget v2, p0, Lcom/android/settingsstock/ApnEditor;->mSimId:I

    if-ne v3, v2, :cond_3

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mProviderUri:Landroid/net/Uri;

    :goto_1
    invoke-static {p0}, Lcom/android/settingsstock/Utils;->getApnEditorPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IApnEditorExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mExt:Lcom/android/settingsstock/ext/IApnEditorExt;

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    const-string v2, "readOnly"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingsstock/ApnEditor;->mReadOnlyMode:Z

    sget-object v2, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read only mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settingsstock/ApnEditor;->mReadOnlyMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/settingsstock/ApnEditor;->mReadOnlyMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.START"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.transaction.STOP"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/settingsstock/ApnEditor;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v6, v6}, Lcom/android/settingsstock/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->fillUi()V

    iget-boolean v2, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->setSpn()V

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->setIMSI()V

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->setPnn()V

    :goto_3
    return-void

    :cond_2
    move v2, v4

    goto/16 :goto_0

    :cond_3
    iget v2, p0, Lcom/android/settingsstock/ApnEditor;->mSimId:I

    if-nez v2, :cond_4

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mProviderUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_4
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mProviderUri:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_5
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/settingsstock/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_6

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    :goto_4
    iput-boolean v3, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_8

    sget-object v2, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->finish()V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mExt:Lcom/android/settingsstock/ext/IApnEditorExt;

    invoke-interface {v2, p0, v1}, Lcom/android/settingsstock/ext/IApnEditorExt;->getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mProviderUri:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_4

    :cond_8
    const/4 v2, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/settingsstock/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->finish()V

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0b05ac

    const v3, 0x104000a

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0090

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/ApnEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settingsstock/ApnEditor$4;

    invoke-direct {v2, p0}, Lcom/android/settingsstock/ApnEditor$4;-><init>(Lcom/android/settingsstock/ApnEditor;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b034d

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mReadOnlyMode:Z

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settingsstock/ApnEditor;->mSourceType:I

    if-eqz v0, :cond_1

    const v0, 0x7f0b05a8

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0b05aa

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f0b05ab

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->finish()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mNotInMmsTransaction:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mIsCallStateIdle:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnEditor;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {p2, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :cond_0
    return v1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->deleteApn()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/settingsstock/ApnEditor;->mSourceType:I

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnEditor;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settingsstock/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->finish()V

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settingsstock/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/ApnEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v1, Lcom/android/settingsstock/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy set PhoneStateListener.LISTEN_NONE!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f07002e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    :catch_0
    move-exception v1

    move v6, v7

    goto :goto_1

    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settingsstock/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settingsstock/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move v6, v7

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settingsstock/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v6, v7

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const-string v6, "apn_type_list"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    iget-object v7, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    invoke-virtual {v7}, Lcom/android/settingsstock/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settingsstock/ApnTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingsstock/ApnEditor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v3}, Lcom/android/settingsstock/ApnEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settingsstock/ApnEditor;->mIsCallStateIdle:Z

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-static {p0}, Lcom/android/settingsstock/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnEditor;->mAirplaneModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settingsstock/ApnEditor;->mDualSimMode:I

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->isMMSNotTransaction()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnEditor;->mNotInMmsTransaction:Z

    invoke-direct {p0}, Lcom/android/settingsstock/ApnEditor;->setScreenEnabledStatus()V

    const-string v1, "tethering"

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    invoke-virtual {v2}, Lcom/android/settingsstock/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mExt:Lcom/android/settingsstock/ext/IApnEditorExt;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor;->mApnTypeList:Lcom/android/settingsstock/ApnTypePreference;

    invoke-interface {v1, v2}, Lcom/android/settingsstock/ext/IApnEditorExt;->setPreferenceState(Landroid/preference/DialogPreference;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settingsstock/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/settingsstock/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "carrier_enabled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
