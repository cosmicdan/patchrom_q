.class public Lcom/android/settingsstock/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/ApnSettings$5;,
        Lcom/android/settingsstock/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field public static final APN_TYPE:Ljava/lang/String; = "apn_type"

.field protected static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DEFAULTAPN_URI_GEMINI_SIM1:Landroid/net/Uri; = null

.field private static final DEFAULTAPN_URI_GEMINI_SIM2:Landroid/net/Uri; = null

.field private static final DIALOG_APN_DISABLED:I = 0x7d0

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x5

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final ID_INDEX:I = 0x0

.field protected static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field public static final RCSE_TYPE:Ljava/lang/String; = "rcse"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field private static final RESTORE_CARRIERS_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/restore"

.field private static final RESTORE_CARRIERS_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/restore"

.field public static final SIM_CARD_1:I = 0x0

.field public static final SIM_CARD_2:I = 0x1

.field public static final SIM_CARD_SINGLE:I = 0x2

.field public static final SIM_CARD_UNDEFINED:I = -0x1

.field private static final SOURCE_TYPE_INDEX:I = 0x4

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field public static final TETHER_TYPE:Ljava/lang/String; = "tethering"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final TYPES_INDEX:I = 0x3

.field private static sNotInMmsTransation:Z


# instance fields
.field protected mAirplaneModeEnabled:Z

.field protected mDefaultApnUri:Landroid/net/Uri;

.field private mDualSimMode:I

.field private mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

.field private mIMSI:Ljava/lang/String;

.field protected mIsCallStateIdle:Z

.field private mIsTetehred:Z

.field protected mIsTetherApn:Z

.field private mListener:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mNumeric:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPnn:Ljava/lang/String;

.field private mRcseExt:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settingsstock/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;

.field protected mRestoreCarrierUri:Landroid/net/Uri;

.field protected mRestoreDefaultApnMode:Z

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field protected mSelectableApnCount:I

.field protected mSelectedKey:Ljava/lang/String;

.field protected mSimId:I

.field private mSpn:Ljava/lang/String;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers_sim1/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/ApnSettings;->DEFAULTAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers_sim2/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/ApnSettings;->DEFAULTAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/ApnSettings;->PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/ApnSettings;->PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingsstock/ApnSettings;->sNotInMmsTransation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/ApnSettings;->mIsCallStateIdle:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/ApnSettings;->mDualSimMode:I

    iput v1, p0, Lcom/android/settingsstock/ApnSettings;->mSelectableApnCount:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnSettings;->mIsTetherApn:Z

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnSettings;->mIsTetehred:Z

    new-instance v0, Lcom/android/settingsstock/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/ApnSettings$1;-><init>(Lcom/android/settingsstock/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mListener:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    new-instance v0, Lcom/android/settingsstock/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/ApnSettings$2;-><init>(Lcom/android/settingsstock/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/ApnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/ApnSettings$3;-><init>(Lcom/android/settingsstock/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/ApnSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/ApnSettings;->fillList(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    invoke-static {p0}, Lcom/android/settingsstock/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settingsstock/ApnSettings;->sNotInMmsTransation:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/ApnSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/ApnSettings;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settingsstock/ApnSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/ApnSettings;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settingsstock/ApnSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/ApnSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/ApnSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settingsstock/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->initSimState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settingsstock/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->setSpn()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settingsstock/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->setIMSI()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settingsstock/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->setPnn()V

    return-void
.end method

.method private fillList(I)V
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/ApnSettings;->getFillListQuery()Ljava/lang/String;

    move-result-object v5

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList where: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/ApnSettings;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const-string v2, "ApnSettings"

    const-string v3, "fillList, mUri null !"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/ApnSettings;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/ApnSettings;->mUri:Landroid/net/Uri;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "sourcetype"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settingsstock/ApnSettings;->mSelectedKey:Ljava/lang/String;

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList : mSelectedKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settingsstock/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settingsstock/ApnSettings;->mIsTetherApn:Z

    if-eqz v2, :cond_1

    const-string v2, "tethering"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const-string v2, "cmmail"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v23, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_2
    const-string v2, "rcse"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/ApnSettings;->mRcseExt:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/ApnSettings;->mRcseExt:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;

    invoke-interface {v2}, Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;->isRcseOnlyApnEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    const-string v2, "ApnSettings"

    const-string v3, "Vodafone not matched"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v2, "ApnSettings"

    const-string v3, "Vodafone matched"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v19, Lcom/android/settingsstock/ApnPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settingsstock/ApnPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/ApnPreference;->setSimId(I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/settingsstock/ApnPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/settingsstock/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/ApnPreference;->setPersistent(Z)V

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/ApnPreference;->setSourceType(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/ApnSettings;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v2, v0, v8, v3}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v23, :cond_5

    if-eqz v14, :cond_7

    :cond_5
    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/ApnPreference;->setApnEditable(Z)V

    const/16 v21, 0x1

    const-string v2, "tethering"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/ApnSettings;->mIsTetherApn:Z

    move/from16 v21, v0

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/ApnPreference;->setSelectable(Z)V

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v19 .. v19}, Lcom/android/settingsstock/ApnPreference;->setChecked()V

    const/16 v16, 0x1

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " added!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const-string v2, "mms"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v21, 0x1

    :goto_5
    goto :goto_3

    :cond_9
    const/16 v21, 0x0

    goto :goto_5

    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settingsstock/ApnSettings;->mSelectableApnCount:I

    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/ApnSettings;->mSelectableApnCount:I

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/ApnSettings;->mSelectableApnCount:I

    new-array v0, v2, [I

    move-object/from16 v22, v0

    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settingsstock/ApnSettings;->mSelectableApnCount:I

    if-ge v12, v2, :cond_c

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingsstock/ApnPreference;

    invoke-virtual {v2}, Lcom/android/settingsstock/ApnPreference;->getSourceType()I

    move-result v2

    aput v2, v22, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settingsstock/ApnSettings;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settingsstock/ApnSettings;->mSelectableApnCount:I

    move-object/from16 v0, v22

    invoke-interface {v2, v9, v3, v0}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->getApnPref(Landroid/preference/PreferenceGroup;I[I)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settingsstock/ApnPreference;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/android/settingsstock/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settingsstock/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/settingsstock/ApnPreference;->setChecked()V

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key does not match.Set key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/settingsstock/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settingsstock/ApnSettings;->mIsTetherApn:Z

    if-nez v2, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/preference/Preference;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_7

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/ApnSettings;->getScreenEnableState()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v7
.end method

.method private initSimState()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    invoke-static {p0, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/ApnSettings;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GEMINI_SIM_ID_KEY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "ApnSettings"

    const-string v4, "Incorrect sim id "

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone"

    const-string v4, "com.mediatek.settings.MultipleSimActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "TARGET_CLASS"

    const-string v4, "com.android.settingsstock.ApnSettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->finish()V

    :goto_0
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNumeric "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/ApnSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mUri:Landroid/net/Uri;

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    sget-object v3, Lcom/android/settingsstock/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/settingsstock/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object v3, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mUri:Landroid/net/Uri;

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    sget-object v3, Lcom/android/settingsstock/ApnSettings;->DEFAULTAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/settingsstock/ApnSettings;->PREFERAPN_URI_GEMINI_SIM1:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    sget-object v3, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mUri:Landroid/net/Uri;

    const-string v3, "gsm.sim.operator.numeric.2"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    sget-object v3, Lcom/android/settingsstock/ApnSettings;->DEFAULTAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mDefaultApnUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/settingsstock/ApnSettings;->PREFERAPN_URI_GEMINI_SIM2:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isMMSNotTransaction()Z
    .locals 7

    const/4 v1, 0x1

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    const-string v4, "ApnSettings"

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

.method private restoreDefaultApn()Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "ApnSettings"

    const-string v1, "restore Default Apn."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnSettings;->showDialog(I)V

    iput-boolean v3, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnMode:Z

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settingsstock/ApnSettings;Lcom/android/settingsstock/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settingsstock/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/settingsstock/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settingsstock/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settingsstock/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settingsstock/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settingsstock/ApnSettings$RestoreApnProcessHandler;

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settingsstock/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    return v3
.end method

.method private setIMSI()V
    .locals 5

    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget v2, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v2, "ApnSettings"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPnn()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pnn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSpn()V
    .locals 5

    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget v2, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;

    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ApnSettings"

    const-string v3, "RemoteException"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected addMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
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

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getFillListQuery()Ljava/lang/String;
    .locals 11

    const/4 v4, 0x0

    :try_start_0
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    iget v8, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v6, ""

    const-string v8, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[isMVNO ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    iget-object v8, p0, Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v1, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " imsi=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/ApnSettings;->mIMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    iget-object v8, p0, Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or spn=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or pnn=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numeric=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/ApnSettings;->mNumeric:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" and ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getFillListQuery result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_0
    move-exception v0

    const-string v8, "ApnSettings"

    const-string v9, "RemoteException"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " spn=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/ApnSettings;->mSpn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pnn=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/ApnSettings;->mPnn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_6
    const-string v6, "(spn is NULL or spn=\"\") and (imsi is NULL or imsi=\"\") and (pnn is NULL or pnn=\"\") "

    goto/16 :goto_2
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getScreenEnableState()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/settingsstock/ApnSettings;->mIsCallStateIdle:Z

    sget-boolean v3, Lcom/android/settingsstock/ApnSettings;->sNotInMmsTransation:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settingsstock/ApnSettings;->mIsCallStateIdle:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    :goto_2
    return v1

    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    move v0, v1

    :goto_3
    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_3

    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    if-ne v4, v3, :cond_1

    move v0, v1

    :goto_4
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_4

    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v4, v3, :cond_2

    move v0, v1

    :goto_5
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_5

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-static {p0}, Lcom/android/settingsstock/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    invoke-static {p0}, Lcom/android/settingsstock/Utils;->getRcseApnPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRcseExt:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRcseExt:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRcseExt:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mListener:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v0, v1}, Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;->addRcseOnlyApnStateChanged(Lcom/android/settingsstock/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->initSimState()V

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getBroadcastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->setSpn()V

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->setIMSI()V

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->setPnn()V

    return-void

    :cond_0
    const-string v0, "ApnSettings"

    const-string v1, "mApnPlugin is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b05b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x7d0

    if-ne p1, v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0091

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0092

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settingsstock/ApnSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settingsstock/ApnSettings$4;-><init>(Lcom/android/settingsstock/ApnSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/ApnSettings;->addMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v0, "ApnSettings"

    const-string v1, "onDestroy set PhoneStateListener.LISTEN_NONE!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRcseExt:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mRcseExt:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mListener:Lcom/android/settingsstock/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    invoke-interface {v0, v1}, Lcom/android/settingsstock/ext/IRcseOnlyApnExtension;->removeRcseOnlyApnStateChanged(Lcom/android/settingsstock/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V

    :cond_1
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getScreenEnableState()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/ApnSettings;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->initSimState()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->addNewApn()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settingsstock/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settingsstock/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settingsstock/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/settingsstock/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/ApnSettings;->mDualSimMode:I

    invoke-direct {p0}, Lcom/android/settingsstock/ApnSettings;->isMMSNotTransaction()Z

    move-result v0

    sput-boolean v0, Lcom/android/settingsstock/ApnSettings;->sNotInMmsTransation:Z

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnSettings;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settingsstock/ApnSettings;->mDualSimMode:I

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnSettings;->showDialog(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settingsstock/ApnSettings;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/settingsstock/ApnSettings;->fillList(I)V

    :cond_2
    return-void
.end method

.method protected setSelectedApnKey(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/settingsstock/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settingsstock/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingsstock/ApnSettings;->mRestoreCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
