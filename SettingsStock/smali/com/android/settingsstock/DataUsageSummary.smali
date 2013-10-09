.class public Lcom/android/settingsstock/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/DataUsageSummary$UidDetailTask;,
        Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settingsstock/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settingsstock/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/settingsstock/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settingsstock/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settingsstock/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settingsstock/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settingsstock/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settingsstock/DataUsageSummary$AppItem;,
        Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;,
        Lcom/android/settingsstock/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settingsstock/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static final ACTION_POLICYMGR_CREATED:Ljava/lang/String; = "com.mediatek.server.action.ACTION_POLICY_CREATED"

.field private static final ATTACH_TIME_OUT_LENGTH:I = 0x7530

.field private static final DETACH_TIME_OUT_LENGTH:I = 0x2710

.field private static final EVENT_ATTACH_TIME_OUT:I = 0x7d1

.field private static final EVENT_DETACH_TIME_OUT:I = 0x7d0

.field private static final LIMIT_MAX_SIZE:I = 0xf9c00

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z = true

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final PREF_FILE:Ljava/lang/String; = "data_usage"

.field private static final PREF_SHOW_ETHERNET:Ljava/lang/String; = "show_ethernet"

.field private static final PREF_SHOW_WIFI:Ljava/lang/String; = "show_wifi"

.field private static final TAB_3G:Ljava/lang/String; = "3g"

.field private static final TAB_4G:Ljava/lang/String; = "4g"

.field private static final TAB_ETHERNET:Ljava/lang/String; = "ethernet"

.field private static final TAB_MOBILE:Ljava/lang/String; = "mobile"

.field private static final TAB_OVERVIEW:Ljava/lang/String; = "Overview"

.field private static final TAB_SIM_1:Ljava/lang/String; = "sim1"

.field private static final TAB_SIM_2:Ljava/lang/String; = "sim2"

.field private static final TAB_WIFI:Ljava/lang/String; = "wifi"

.field private static final TAG:Ljava/lang/String; = "DataUsage"

.field private static final TAG_APP_DETAILS:Ljava/lang/String; = "appDetails"

.field private static final TAG_BG_DATA_APP_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataDialogMessage"

.field private static final TAG_BG_DATA_APP_DIALOG_TITLE:Ljava/lang/String; = "bgDataDialogTitle"

.field private static final TAG_BG_DATA_MENU_DIALOG_MESSAGE:Ljava/lang/String; = "bgDataMenuDialogMessage"

.field private static final TAG_BG_DATA_RESTRICT_DENY_MESSAGE:Ljava/lang/String; = "bgDataRestrictDenyMessage"

.field private static final TAG_BG_DATA_SUMMARY:Ljava/lang/String; = "bgDataSummary"

.field private static final TAG_BG_DATA_SWITCH:Ljava/lang/String; = "bgDataSwitch"

.field private static final TAG_CONFIRM_APP_RESTRICT:Ljava/lang/String; = "confirmAppRestrict"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"

.field private static final TAG_CONFIRM_DATA_DISABLE:Ljava/lang/String; = "confirmDataDisable"

.field private static final TAG_CONFIRM_DATA_ROAMING:Ljava/lang/String; = "confirmDataRoaming"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CONFIRM_RESTRICT:Ljava/lang/String; = "confirmRestrict"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_DENIED_RESTRICT:Ljava/lang/String; = "deniedRestrict"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"

.field private static final TEST_ANIM:Z = false

.field private static final TEST_RADIOS:Z = false

.field private static final TEST_RADIOS_PROP:Ljava/lang/String; = "test.radios"

.field private static final TEST_SUBSCRIBER_PROP:Ljava/lang/String; = "test.subscriberid"

.field private static final WARNING_MAX_SIZE:I = 0xe1000

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;

.field private static sIsSwitching:Z

.field private static sIsWifiOnly:Z

.field private static sSettingsMiscExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

.field private static sSimRoamingExt:Lcom/android/settingsstock/ext/ISimRoamingExt;


# instance fields
.field private mAdapter:Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/settingsstock/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settingsstock/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingsstock/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterOther:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterSim1:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

.field private mCycleAdapterSim2:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataConnectionObserver:Landroid/database/ContentObserver;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field private mHaveMobileSim:Z

.field mHaveSim1Tab:Z

.field mHaveSim2Tab:Z

.field private mHeader:Landroid/view/ViewGroup;

.field private mITelephony:Lcom/android/internal/telephony/ITelephony;

.field private mInsetSide:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentTab:Ljava/lang/String;

.field private mIsAirplaneModeOn:Z

.field private mIsLimitChangeToChecked:Z

.field private mIsUserEnabled:Z

.field private mIsUserEnabledNoneGemini:Z

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLockScreenEnabled:Landroid/widget/Switch;

.field private mLockScreenPrefTitle:Landroid/widget/TextView;

.field private mMenuAutoSync:Landroid/view/MenuItem;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuDataRoamingSim1:Landroid/view/MenuItem;

.field private mMenuDataRoamingSim2:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mOverViewExpList:Landroid/widget/ExpandableListView;

.field private mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

.field private mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSavedCurrentTab:Ljava/lang/String;

.field private mShowEthernet:Z

.field private mShowOnLockScreenView:Landroid/view/View;

.field private mShowWifi:Z

.field mSim1Name:Ljava/lang/String;

.field mSim2Name:Ljava/lang/String;

.field mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field mSimStatus1:I

.field mSimStatus2:I

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTimerHandler:Landroid/os/Handler;

.field private mUidDetailProvider:Lcom/android/settingsstock/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settingsstock/DataUsageSummary;->sIsSwitching:Z

    sput-boolean v0, Lcom/android/settingsstock/DataUsageSummary;->sIsWifiOnly:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settingsstock/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settingsstock/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settingsstock/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabledNoneGemini:Z

    iput v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mInsetSide:I

    iput-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowWifi:Z

    iput-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowEthernet:Z

    iput-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    iput-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim1Tab:Z

    iput-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim2Tab:Z

    iput-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabled:Z

    iput-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveMobileSim:Z

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/DataUsageSummary$1;-><init>(Lcom/android/settingsstock/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/DataUsageSummary$2;-><init>(Lcom/android/settingsstock/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataConnectionObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingsstock/DataUsageSummary$3;-><init>(Lcom/android/settingsstock/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$4;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$6;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$7;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$8;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$9;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$10;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$11;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$12;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$13;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$14;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$14;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$15;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$15;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$16;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$16;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settingsstock/DataUsageSummary$17;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/DataUsageSummary$17;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mChartListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settingsstock/DataUsageSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settingsstock/DataUsageSummary;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/net/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settingsstock/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingsstock/DataUsageSummary;->sIsSwitching:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settingsstock/DataUsageSummary;->sIsSwitching:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settingsstock/DataUsageSummary;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateTabs()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settingsstock/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settingsstock/DataUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/settingsstock/DataUsageSummary;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settingsstock/DataUsageSummary;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/DataUsageSummary;->onDataEnableChangeGemini(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settingsstock/DataUsageSummary;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settingsstock/DataUsageSummary;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settingsstock/DataUsageSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settingsstock/DataUsageSummary;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->isNeedtoShowRoamingMsg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400()Lcom/android/settingsstock/ext/ISimRoamingExt;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/DataUsageSummary;->sSimRoamingExt:Lcom/android/settingsstock/ext/ISimRoamingExt;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settingsstock/DataUsageSummary;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settingsstock/DataUsageSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settingsstock/DataUsageSummary;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateGeminiSimStatus()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/net/UidDetailProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mUidDetailProvider:Lcom/android/settingsstock/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/widget/ChartDataUsageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settingsstock/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/settingsstock/DataUsageSummary;Lcom/android/settingsstock/net/ChartData;)Lcom/android/settingsstock/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settingsstock/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settingsstock/DataUsageSummary;)Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mAdapter:Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingsstock/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settingsstock/DataUsageSummary;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/settingsstock/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settingsstock/DataUsageSummary;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/settingsstock/DataUsageSummary;Lcom/android/settingsstock/DataUsageSummary$AppItem;)Lcom/android/settingsstock/DataUsageSummary$AppItem;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/settingsstock/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/settingsstock/DataUsageSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsLimitChangeToChecked:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/settingsstock/DataUsageSummary;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/DataUsageSummary;->setMobileDataEnabled(IZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/settingsstock/DataUsageSummary;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/DataUsageSummary;->setDataRoaming(IZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/settingsstock/DataUsageSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$4900()Lcom/android/settingsstock/ext/ISettingsMiscExt;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingsstock/DataUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabledNoneGemini:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settingsstock/DataUsageSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabledNoneGemini:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/settingsstock/DataUsageSummary;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settingsstock/DataUsageSummary;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settingsstock/DataUsageSummary;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/settingsstock/DataUsageSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsAirplaneModeOn:Z

    return p1
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v6, 0x7f0b08b2

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim1Tab:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settingsstock/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim2Tab:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/settingsstock/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0b08b1

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0b08b0

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0b08ad

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f0b08ae

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method private buildLimitedNetworksString()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b08b3

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settingsstock/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private checkMtkLockScreenApkExist()Z
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "com.mediatek.DataUsageLockScreenClient"

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v5, "DataUsage"

    const-string v6, "ClassNotFoundException happens,MTK Keyguard did not install"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    const-string v3, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeTabFromIntent, subscriber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string v2, "DataUsage"

    const-string v3, "the subscriber error , null!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "sim1"

    goto :goto_0

    :pswitch_1
    const-string v2, "3g"

    goto :goto_0

    :pswitch_2
    const-string v2, "4g"

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "sim1"

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/settingsstock/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "sim2"

    goto :goto_0

    :cond_3
    const-string v2, "DataUsage"

    const-string v3, "the subscriber error , no mataching!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "sim1"

    goto :goto_0

    :pswitch_3
    const-string v2, "wifi"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settingsstock/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settingsstock/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settingsstock/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settingsstock/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    invoke-static {}, Lcom/android/settingsstock/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 10

    const v8, 0x10010

    sget-object v9, Lcom/android/settingsstock/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/android/settingsstock/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/android/settingsstock/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settingsstock/DataUsageSummary$AppItem;->key:I

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "data_roaming"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getDataRoaming(I)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get data Romaing for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getEnableStateInProvider(Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "sim1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_usage_on_lockscreen_sim1"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    const-string v5, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentTab : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " lock screen state ON : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v3, :cond_3

    :goto_2
    return v3

    :cond_1
    :try_start_1
    const-string v2, "sim2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_usage_on_lockscreen_sim2"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "DataUsage"

    const-string v5, "Get data from provider failure"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method private getSimIndicatorState(I)I
    .locals 6

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIndicator() slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "DataUsage"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "DataUsage"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSubscriberId(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberId() slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imsiId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10

    const/4 v8, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v1, v5

    :goto_0
    invoke-virtual {v4, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v7

    if-ne v7, v8, :cond_2

    move v2, v5

    :goto_1
    const-string v7, "DataUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isSim1StateReady :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isSim2StateReady :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    move v3, v5

    :goto_2
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    :goto_3
    return v5

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_2

    :cond_4
    move v5, v6

    goto :goto_3
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040028

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private inflateLockScreenView(Landroid/view/LayoutInflater;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-static {p1, v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingsstock/DataUsageSummary;->getEnableStateInProvider(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    new-instance v1, Lcom/android/settingsstock/DataUsageSummary$18;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/DataUsageSummary$18;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    const v1, 0x7f0b0181

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x2

    const v2, 0x7f04005f

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/settingsstock/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settingsstock/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/android/settingsstock/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settingsstock/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAppDetailMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v0

    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMoblieDataEnabled for slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedtoShowRoamingMsg()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->getDataRoaming()Z

    move-result v1

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInRoaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoamingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settingsstock/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkPolicyModifiable policy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSimReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isSimStatusNotReady(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x1

    const-string v3, "sim1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimStatus1:I

    if-ne v3, v2, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "sim2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimStatus2:I

    if-ne v3, v2, :cond_5

    :cond_4
    move v0, v2

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private onDataEnableChangeGemini(ZI)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p2}, Lcom/android/settingsstock/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/settingsstock/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/16 v1, 0x12e

    invoke-virtual {v0, p2, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    const-string v0, "DataUsage"

    const-string v1, "Data enable check change request pin"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/android/settingsstock/DataUsageSummary;->setMobileDataEnabled(IZ)V

    iput-boolean v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabled:Z

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/android/settingsstock/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settingsstock/DataUsageSummary;I)V

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3

    const-string v1, "DataUsage"

    const-string v2, "setAppRestrictBackground()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settingsstock/DataUsageSummary$AppItem;->key:I

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDataRoaming(IZ)V
    .locals 6

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set data Romaing for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p2, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DataUsage"

    const-string v3, "data roaming setting remote exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "DataUsage"

    const-string v3, "iTelephony is null , error !"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    goto :goto_1
.end method

.method private setDataRoaming(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled for slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingsstock/DataUsageSummary;->sIsSwitching:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabled:Z

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    const-string v0, "DataUsage"

    const-string v1, "setMobileDataEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabledNoneGemini:Z

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3

    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyLimitBytes() , limitBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3

    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPolicyWarningBytes() , warningBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2

    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateAppDetail()V
    .locals 21

    const-string v18, "DataUsage"

    const-string v19, "updateAppDetail()"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->isAppDetailMode()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingsstock/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settingsstock/DataUsageSummary$AppItem;->key:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mUidDetailProvider:Lcom/android/settingsstock/net/UidDetailProvider;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingsstock/net/UidDetail;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/android/settingsstock/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, v7, Lcom/android/settingsstock/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    iget-object v5, v7, Lcom/android/settingsstock/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v11, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v11, :cond_2

    aget-object v10, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0, v10}, Lcom/android/settingsstock/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingsstock/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/settingsstock/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v9, v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    array-length v0, v14

    move/from16 v18, v0

    if-lez v18, :cond_5

    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const-string v19, "android.intent.category.DEFAULT"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v12, 0x0

    move-object v5, v14

    array-length v11, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v13, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    if-eqz v18, :cond_4

    const/4 v12, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->updateDetailData()V

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-static {v6}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_6

    sget-object v18, Lcom/android/settingsstock/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    const v19, 0x7f0b08b8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bgDataSwitch"

    invoke-interface/range {v18 .. v20}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x1020016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v18, Lcom/android/settingsstock/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    const v19, 0x7f0b08b9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bgDataSummary"

    invoke-interface/range {v18 .. v20}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_4
    const-string v18, "DataUsage"

    const-string v19, "updateAppDetail done"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private updateBody()V
    .locals 13

    const v12, 0x7f0b08b4

    const v11, 0x7f0b08a9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v8, 0x8

    const-string v7, "DataUsage"

    const-string v9, "updateBody()"

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->isAdded()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_1

    move v2, v5

    :goto_1
    const-string v7, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateBody currentTab : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mSavedCurrentTab : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    const-string v5, "DataUsage"

    const-string v6, "no tab selected; hiding body"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    const-string v7, "Overview"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-le v7, v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v6}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v5}, Lcom/mediatek/datausage/OverViewTabAdapter;->updateAdapter()V

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v5}, Lcom/mediatek/datausage/OverViewTabAdapter;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v7, v8}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/settingsstock/DataUsageSummary;->updateLockScreenViewVisibility(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    move v3, v5

    :goto_2
    iput-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v7, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateBody : currentTab = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sIsSwitching = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/settingsstock/DataUsageSummary;->sIsSwitching:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v2, :cond_8

    move v7, v6

    :goto_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapterOther:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    iput-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    const-string v7, "sim1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimStatus1:I

    if-ne v7, v5, :cond_9

    :cond_6
    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const-string v7, "DataUsage"

    const-string v8, "disable sim 1 enable because radio off"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    sget-boolean v8, Lcom/android/settingsstock/DataUsageSummary;->sIsSwitching:Z

    if-nez v8, :cond_a

    :goto_5
    invoke-virtual {v7, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapterSim1:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    iput-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-static {v6}, Lcom/android/settingsstock/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    :goto_6
    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v9, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    invoke-static {v8, v9}, Lcom/android/settingsstock/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingsstock/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingsstock/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v5, v7, v8, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iput-boolean v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    :cond_7
    move v3, v6

    goto/16 :goto_2

    :cond_8
    move v7, v8

    goto :goto_3

    :cond_9
    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v7, v12}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v7, v11}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_4

    :cond_a
    move v5, v6

    goto :goto_5

    :cond_b
    const-string v7, "sim2"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-boolean v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsAirplaneModeOn:Z

    if-nez v7, :cond_c

    iget v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimStatus2:I

    if-ne v7, v5, :cond_d

    :cond_c
    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const-string v7, "DataUsage"

    const-string v8, "disable sim 2 enable because radio off"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    sget-boolean v7, Lcom/android/settingsstock/DataUsageSummary;->sIsSwitching:Z

    if-nez v7, :cond_e

    move v7, v5

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapterSim2:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    iput-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-static {v5}, Lcom/android/settingsstock/DataUsageSummary;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_6

    :cond_d
    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v7, v12}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v7, v11}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_7

    :cond_e
    move v7, v6

    goto :goto_8

    :cond_f
    const-string v5, "mobile"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v5, v11}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settingsstock/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_10
    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v5, v12}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    goto :goto_9

    :cond_11
    const-string v5, "3g"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v7, 0x7f0b08b5

    invoke-static {v5, v7}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v7, 0x7f0b08ab

    invoke-static {v5, v7}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_12
    const-string v5, "4g"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v7, 0x7f0b08b6

    invoke-static {v5, v7}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v7, 0x7f0b08aa

    invoke-static {v5, v7}, Lcom/android/settingsstock/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_13
    const-string v5, "wifi"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_14
    const-string v5, "ethernet"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_6

    :cond_15
    const-string v5, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown TAB  currentTab : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settingsstock/DataUsageSummary$CycleItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide v18, 0x7fffffffffffffffL

    const-wide/high16 v16, -0x8000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    iget-object v3, v3, Lcom/android/settingsstock/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    iget-object v3, v3, Lcom/android/settingsstock/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v16

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v3, v18, v9

    if-nez v3, :cond_1

    move-wide/from16 v18, v20

    :cond_1
    const-wide/high16 v9, -0x8000

    cmp-long v3, v16, v9

    if-nez v3, :cond_2

    const-wide/16 v9, 0x1

    add-long v16, v20, v9

    :cond_2
    const/4 v15, 0x0

    if-eqz p1, :cond_4

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v7

    :goto_0
    cmp-long v3, v7, v18

    if-lez v3, :cond_3

    move-object/from16 v0, p1

    invoke-static {v7, v8, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v5

    const-string v3, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generating cs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to ce="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " waiting for hs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    new-instance v3, Lcom/android/settingsstock/DataUsageSummary$CycleItem;

    invoke-direct/range {v3 .. v8}, Lcom/android/settingsstock/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v9, v3}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v7, v5

    const/4 v15, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settingsstock/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    :cond_4
    if-nez v15, :cond_6

    move-wide/from16 v7, v16

    :goto_1
    cmp-long v3, v7, v18

    if-lez v3, :cond_5

    const-wide v9, 0x90321000L

    sub-long v5, v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    new-instance v3, Lcom/android/settingsstock/DataUsageSummary$CycleItem;

    invoke-direct/range {v3 .. v8}, Lcom/android/settingsstock/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v9, v3}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v7, v5

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settingsstock/DataUsageSummary$CycleItem;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v12}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapter:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3, v12}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settingsstock/DataUsageSummary$CycleItem;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settingsstock/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v9 .. v14}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_2
    return-void

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->updateDetailData()V

    goto :goto_2

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 29

    const-string v3, "DataUsage"

    const-string v11, "updateDetailData()"

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settingsstock/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settingsstock/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    iget-object v3, v3, Lcom/android/settingsstock/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    iget-object v3, v3, Lcom/android/settingsstock/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v11, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    iget-object v3, v3, Lcom/android/settingsstock/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v11, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppPieChart:Lcom/android/settingsstock/widget/PieChartView;

    const/16 v11, 0xaf

    invoke-virtual {v3, v11}, Lcom/android/settingsstock/widget/PieChartView;->setOriginAngle(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppPieChart:Lcom/android/settingsstock/widget/PieChartView;

    invoke-virtual {v3}, Lcom/android/settingsstock/widget/PieChartView;->removeAllSlices()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppPieChart:Lcom/android/settingsstock/widget/PieChartView;

    const-string v11, "#d88d3a"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/settingsstock/widget/PieChartView;->addSlice(JI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppPieChart:Lcom/android/settingsstock/widget/PieChartView;

    const-string v11, "#666666"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/settingsstock/widget/PieChartView;->addSlice(JI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppPieChart:Lcom/android/settingsstock/widget/PieChartView;

    invoke-virtual {v3}, Lcom/android/settingsstock/widget/PieChartView;->generatePath()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static/range {v19 .. v21}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    iget-object v11, v3, Lcom/android/settingsstock/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :goto_0
    if-eqz v10, :cond_3

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v26, v11, v13

    :goto_1
    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/settingsstock/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v24

    const-string v3, "mobile"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const v25, 0x7f0b08d2

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v28, v11, v12

    const/4 v12, 0x1

    aput-object v24, v11, v12

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Lcom/android/settingsstock/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->ensureLayoutTransitions()V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settingsstock/DataUsageSummary;->mChartData:Lcom/android/settingsstock/net/ChartData;

    iget-object v11, v3, Lcom/android/settingsstock/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/android/settingsstock/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settingsstock/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0

    :cond_3
    const-wide/16 v26, 0x0

    goto :goto_1

    :cond_4
    const v25, 0x7f0b08d1

    goto :goto_2
.end method

.method private updateGeminiSimStatus()V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v2, "DataUsage"

    const-string v3, "updateGeminiSimStatus()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimList:Ljava/util/List;

    iput-boolean v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim1Tab:Z

    iput-boolean v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim2Tab:Z

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim info slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " display name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sim id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v2, :cond_1

    iput-boolean v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim1Tab:Z

    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0, v2}, Lcom/android/settingsstock/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v2

    iput v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimStatus1:I

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimStatus1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimStatus1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v2, v6, :cond_0

    iput-boolean v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim2Tab:Z

    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0, v2}, Lcom/android/settingsstock/DataUsageSummary;->getSimIndicatorState(I)I

    move-result v2

    iput v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimStatus2:I

    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimStatus2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimStatus2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private updateLockScreenViewState(Landroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 9

    const-wide/16 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "DataUsage"

    const-string v6, "updateLockScreenViewState()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    if-eqz v5, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settingsstock/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-virtual {v5, p1}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_1
    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->isAppDetailMode()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move-wide v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsLimitChangeToChecked:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v8}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsLimitChangeToChecked:Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-direct {p0, p2}, Lcom/android/settingsstock/DataUsageSummary;->getEnableStateInProvider(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenPrefTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mLockScreenEnabled:Landroid/widget/Switch;

    invoke-direct {p0, p2}, Lcom/android/settingsstock/DataUsageSummary;->getEnableStateInProvider(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateLockScreenViewVisibility(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x8

    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLockScreenViewVisibility() currentTab : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "wifi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingsstock/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowOnLockScreenView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->checkMtkLockScreenApkExist()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePolicy(Z)V
    .locals 8

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "DataUsage"

    const-string v4, "updatePolicy()"

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->isAppDetailMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const-string v1, "mobile"

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v4}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-nez v1, :cond_9

    const-string v1, "DataUsage"

    const-string v2, "mDisableAtLimitView should not be null here !!!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string v1, "sim1"

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0, v2}, Lcom/android/settingsstock/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabled:Z

    if-eqz v1, :cond_5

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    const-string v1, "sim2"

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0, v3}, Lcom/android/settingsstock/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabled:Z

    if-eqz v1, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mBinding:Z

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    invoke-direct {p0, v0}, Lcom/android/settingsstock/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "DataUsage"

    const-string v4, "network policy  modifiable, checkbox on"

    invoke-static {v1, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->setPolicyActive(Landroid/net/NetworkPolicy;)V

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v0, :cond_d

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->isAppDetailMode()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    :cond_a
    :goto_6
    const-string v1, "sim1"

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "sim2"

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "mobile"

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settingsstock/DataUsageSummary;->updateLockScreenViewState(Landroid/net/NetworkTemplate;Ljava/lang/String;)V

    :cond_c
    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settingsstock/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    goto/16 :goto_2

    :cond_d
    move v3, v2

    goto :goto_5

    :cond_e
    const-string v1, "DataUsage"

    const-string v2, "network policy not modifiable, no warning limit/sweeps."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_6
.end method

.method private updateTabs()V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "DataUsage"

    const-string v8, "updateTabs()"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    const-string v7, "DataUsage"

    const-string v8, "clear All Tabs..."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "Overview"

    const v9, 0x7f0b0187

    invoke-direct {p0, v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v7, "DataUsage"

    const-string v8, "Add OVERVIEW TAB"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "3g"

    const v9, 0x7f0b08b1

    invoke-direct {p0, v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "4g"

    const v9, 0x7f0b08b0

    invoke-direct {p0, v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowWifi:Z

    if-eqz v7, :cond_1

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "wifi"

    const v9, 0x7f0b08ad

    invoke-direct {p0, v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_1
    iget-boolean v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowEthernet:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "ethernet"

    const v9, 0x7f0b08ae

    invoke-direct {p0, v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_2
    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-nez v7, :cond_6

    move v3, v5

    :goto_1
    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-le v7, v5, :cond_7

    move v2, v5

    :goto_2
    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setVisibility(I)V

    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIntentTab "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSavedCurrentTab "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v5, :cond_a

    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent tab "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateBody()V

    :goto_4
    iput-object v10, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    :cond_3
    :goto_5
    return-void

    :cond_4
    iget-boolean v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim1Tab:Z

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "sim1"

    iget-object v9, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v7, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mSim1Name:Ljava/lang/String;

    :cond_5
    iget-boolean v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mHaveSim2Tab:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "sim2"

    iget-object v9, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settingsstock/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v7, v4, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mSim2Name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    move v3, v6

    goto/16 :goto_1

    :cond_7
    move v2, v6

    goto/16 :goto_2

    :cond_8
    const/16 v6, 0x8

    goto/16 :goto_3

    :cond_9
    const-string v5, "DataUsage"

    const-string v6, "set Intent tab "

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    if-eqz v5, :cond_c

    const-string v5, "DataUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saved curernt tabs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_b
    iput-object v10, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateBody()V

    goto/16 :goto_5

    :cond_c
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateBody()V

    goto/16 :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x7

    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current config orienation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x6

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "data_usage"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateGeminiSimStatus()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settingsstock/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v3, v4}, Lcom/android/settingsstock/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyEditor:Lcom/android/settingsstock/net/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/settingsstock/net/NetworkPolicyEditor;->read()V

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_wifi"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowWifi:Z

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_ethernet"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowEthernet:Z

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowWifi:Z

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowEthernet:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingsstock/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v7, Lcom/android/settingsstock/DataUsageSummary;->sIsWifiOnly:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingsstock/Utils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/ISimRoamingExt;

    move-result-object v3

    sput-object v3, Lcom/android/settingsstock/DataUsageSummary;->sSimRoamingExt:Lcom/android/settingsstock/ext/ISimRoamingExt;

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingsstock/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/ISettingsMiscExt;

    move-result-object v3

    sput-object v3, Lcom/android/settingsstock/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/DataUsageSummary;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "DataUsage"

    const-string v7, "onCreateView"

    invoke-static {v4, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f040030

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/settingsstock/net/UidDetailProvider;

    invoke-direct {v4, v0}, Lcom/android/settingsstock/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mUidDetailProvider:Lcom/android/settingsstock/net/UidDetailProvider;

    :try_start_0
    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    new-instance v4, Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-direct {v4, v7, v8}, Lcom/mediatek/datausage/OverViewTabAdapter;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;)V

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const v4, 0x7f080061

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x200

    if-ne v4, v7, :cond_1

    move v2, v5

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1050029

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mInsetSide:I

    :goto_1
    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v5}, Lcom/android/settingsstock/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const v4, 0x7f04002e

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    const v4, 0x7f080062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ExpandableListView;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mOverviewAdapter:Lcom/mediatek/datausage/OverViewTabAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mOverViewExpList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, v6}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v9, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/android/settingsstock/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/android/settingsstock/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f08005e

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f08005f

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/settingsstock/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v4, v7}, Lcom/android/settingsstock/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DataUsageSummary;->inflateLockScreenView(Landroid/view/LayoutInflater;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f080054

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f080055

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapterSim1:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapterSim2:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleAdapterOther:Lcom/android/settingsstock/DataUsageSummary$CycleAdapter;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f08004b

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settingsstock/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mChartListener:Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/android/settingsstock/widget/ChartDataUsageView;->setListener(Lcom/android/settingsstock/widget/ChartDataUsageView$DataUsageChartListener;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mChart:Lcom/android/settingsstock/widget/ChartDataUsageView;

    invoke-virtual {v4, v9}, Lcom/android/settingsstock/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f080056

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f080057

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f080058

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08005b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settingsstock/widget/PieChartView;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppPieChart:Lcom/android/settingsstock/widget/PieChartView;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f080059

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08005a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08005d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f08005c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v4, v6}, Lcom/android/settingsstock/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f080060

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mUidDetailProvider:Lcom/android/settingsstock/net/UidDetailProvider;

    iget v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v5, v6}, Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/settingsstock/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mAdapter:Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settingsstock/DataUsageSummary;->mAdapter:Lcom/android/settingsstock/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v3

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    move v2, v6

    goto/16 :goto_0

    :cond_2
    iput v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mInsetSide:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DataUsage"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mUidDetailProvider:Lcom/android/settingsstock/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingsstock/net/UidDetailProvider;->clearCache()V

    iput-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mUidDetailProvider:Lcom/android/settingsstock/net/UidDetailProvider;

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v12, v6

    :goto_0
    return v12

    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v12

    :goto_1
    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    const-string v1, "sim1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v11, v6

    :goto_2
    if-eqz v8, :cond_2

    invoke-static {p0, v11}, Lcom/android/settingsstock/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/settingsstock/DataUsageSummary;I)V

    goto :goto_0

    :cond_0
    move v8, v6

    goto :goto_1

    :cond_1
    move v11, v12

    goto :goto_2

    :cond_2
    invoke-direct {p0, v11, v6}, Lcom/android/settingsstock/DataUsageSummary;->setDataRoaming(IZ)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v10, v12

    :goto_3
    if-eqz v10, :cond_4

    invoke-static {p0}, Lcom/android/settingsstock/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settingsstock/DataUsageSummary;)V

    goto :goto_0

    :cond_3
    move v10, v6

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/settingsstock/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v9, v12

    :goto_4
    invoke-direct {p0, v9}, Lcom/android/settingsstock/DataUsageSummary;->setMobilePolicySplit(Z)V

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateTabs()V

    goto :goto_0

    :cond_5
    move v9, v6

    goto :goto_4

    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_6

    move v6, v12

    :cond_6
    iput-boolean v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowWifi:Z

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateTabs()V

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_7

    move v6, v12

    :cond_7
    iput-boolean v6, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowEthernet:Z

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-boolean v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settingsstock/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b08d3

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "SyncState"

    const-string v2, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    move v6, v12

    :cond_9
    invoke-static {p0, v6}, Lcom/android/settingsstock/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settingsstock/DataUsageSummary;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f08026c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "DataUsage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 21

    const-string v18, "DataUsage"

    const-string v19, "onPrepareOptionsMenu()"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v18

    if-nez v18, :cond_2

    const/4 v8, 0x1

    :goto_0
    const v18, 0x7f08026c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settingsstock/DataUsageSummary;->isSimStatusNotReady(Ljava/lang/String;)Z

    move-result v9

    if-nez v2, :cond_0

    if-eqz v9, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    const v18, 0x7f08026d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    sget-object v18, Lcom/android/settingsstock/DataUsageSummary;->sSettingsMiscExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    const v19, 0x7f0b08b8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "bgDataSwitch"

    invoke-interface/range {v18 .. v20}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    sget-boolean v18, Lcom/android/settingsstock/DataUsageSummary;->sIsWifiOnly:Z

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    invoke-static {v3}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_8

    if-nez v2, :cond_8

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    const v18, 0x7f08026f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    move-object/from16 v19, v0

    if-nez v2, :cond_a

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v18, 0x7f08026e

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    invoke-static {v3}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-eqz v8, :cond_b

    if-nez v2, :cond_b

    const/16 v18, 0x1

    :goto_5
    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const v18, 0x7f080270

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    invoke-static {v3}, Lcom/android/settingsstock/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-static {v3}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_d

    if-nez v2, :cond_c

    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mShowWifi:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_7
    const v18, 0x7f080271

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settingsstock/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-static {v3}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_f

    if-nez v2, :cond_e

    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mShowEthernet:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_9
    const v18, 0x7f080272

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-static {v3}, Lcom/android/settingsstock/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    invoke-static {v3}, Lcom/android/settingsstock/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_11

    :cond_1
    if-nez v2, :cond_10

    const/16 v18, 0x1

    :goto_a
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_b
    const v18, 0x7f080273

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0931

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_12

    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v18, 0x1080

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_c
    return-void

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3
    const-string v18, "sim1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "sim2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_4
    const-string v18, "sim1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v16, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v15

    const-string v18, "DataUsage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "slotId : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " simInfo : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_6

    iget-object v12, v15, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0b089b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->getDataRoaming(I)Z

    move-result v19

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_5
    const/16 v16, 0x1

    goto/16 :goto_d

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_8

    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_11
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    :cond_12
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v1, "DataUsage"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateGeminiSimStatus()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingsstock/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsAirplaneModeOn:Z

    iput-boolean v4, p0, Lcom/android/settingsstock/DataUsageSummary;->mIsUserEnabled:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingsstock/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settingsstock/DataUsageSummary;->updateTabs()V

    new-instance v1, Lcom/android/settingsstock/DataUsageSummary$5;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/DataUsageSummary$5;-><init>(Lcom/android/settingsstock/DataUsageSummary;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingsstock/DataUsageSummary$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/DataUsageSummary;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingsstock/DataUsageSummary;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method
