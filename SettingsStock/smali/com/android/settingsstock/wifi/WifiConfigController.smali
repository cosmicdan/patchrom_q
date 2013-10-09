.class public Lcom/android/settingsstock/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final BUFFER_LENGTH:I = 0x28

.field private static final DEFAULT_WLAN_PROP:Ljava/lang/String; = "wifi-wapi"

.field private static final DHCP:I = 0x0

.field private static final IPV4_ADDRESS_LENGTH:I = 0x4

.field private static final IPV6_ADDRESS_LENGTH:I = 0x10

.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field private static final MCC_SUB_BEG:I = 0x0

.field private static final MNC_SUB_BEG:I = 0x3

.field private static final MNC_SUB_END:I = 0x5

.field private static final PHASE2_PREFIX:Ljava/lang/String; = "auth="

.field public static final PROXY_NONE:I = 0x0

.field public static final PROXY_STATIC:I = 0x1

.field private static final SIM_SLOT_0:I = 0x1

.field private static final SIM_SLOT_1:I = 0x2

.field private static final SSID_MAX_LEN:I = 0x20

.field private static final STATIC_IP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiConfigController"

.field private static final WAPI:Ljava/lang/String; = "wapi"

.field private static final WIFI:Ljava/lang/String; = "wifi"

.field public static final WIFI_EAP_METHOD_AKA:I = 0x4

.field public static final WIFI_EAP_METHOD_PEAP:I = 0x0

.field public static final WIFI_EAP_METHOD_PWD:I = 0x5

.field public static final WIFI_EAP_METHOD_SIM:I = 0x3

.field public static final WIFI_EAP_METHOD_TLS:I = 0x1

.field public static final WIFI_EAP_METHOD_TTLS:I = 0x2

.field private static final WIFI_WAPI:Ljava/lang/String; = "wifi-wapi"

.field private static final WLAN_PROP_KEY:Ljava/lang/String; = "persist.sys.wlan"


# instance fields
.field private final mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field mExt:Lcom/android/settingsstock/ext/IWifiExt;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHex:Z

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSimSlot:Landroid/widget/Spinner;

.field private mSsidView:Landroid/widget/TextView;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private final mView:Landroid/view/View;

.field private mWEPKeyIndex:Landroid/widget/Spinner;

.field private mWEPKeyType:Landroid/widget/Spinner;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiClientCert:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/android/settingsstock/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingsstock/wifi/AccessPoint;Z)V
    .locals 26

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v21, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v21, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    new-instance v21, Landroid/net/LinkProperties;

    invoke-direct/range {v21 .. v21}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-nez p3, :cond_5

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mEdit:Z

    new-instance v21, Landroid/os/Handler;

    invoke-direct/range {v21 .. v21}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v21, "phone"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-static {v6}, Lcom/android/settingsstock/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/IWifiExt;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    move/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/ext/IWifiExt;->setAPNetworkId(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const-string v21, "WifiConfigController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "priority="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/ext/IWifiExt;->setAPPriority(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f080219

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/settingsstock/ext/IWifiExt;->getPriorityView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_1

    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f080207

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f080200

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0b0446

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0801de

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/android/settingsstock/wifi/Utf8ByteLengthFilter;

    const/16 v25, 0x20

    invoke-direct/range {v24 .. v25}, Lcom/android/settingsstock/wifi/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const v21, 0x7f0801f6

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Lcom/android/settingsstock/ext/IWifiExt;->setSecurityText(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0801e3

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settingsstock/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0801ef

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0801f5

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v21, 0x7f0400b3

    const v22, 0x1020014

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070019

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v4, v6, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_1
    const v20, 0x7f0801e3

    const-string v21, "persist.sys.wlan"

    const-string v22, "wifi-wapi"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v21, "wifi-wapi"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-static {}, Lcom/android/settingsstock/wifi/AccessPoint;->isWFATestSupported()Z

    move-result v21

    if-eqz v21, :cond_7

    const v20, 0x7f08020e

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settingsstock/wifi/WifiConfigController;->switchWlanSecuritySpinner(Landroid/widget/Spinner;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->showProxyFields()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f08021a

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f08021b

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0b0490

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0b0492

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v21

    if-eqz v21, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    :cond_4
    return-void

    :cond_5
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    move/from16 v21, v0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0801ae

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    const v20, 0x7f0801e3

    goto/16 :goto_2

    :cond_8
    const-string v21, "wifi"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-static {}, Lcom/android/settingsstock/wifi/AccessPoint;->isWFATestSupported()Z

    move-result v21

    if-eqz v21, :cond_9

    const v20, 0x7f080210

    goto/16 :goto_2

    :cond_9
    const v20, 0x7f08020f

    goto/16 :goto_2

    :cond_a
    const-string v21, "wapi"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const v20, 0x7f080211

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0801dd

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingsstock/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    if-eqz v18, :cond_c

    const v21, 0x7f0b0467

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settingsstock/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settingsstock/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingsstock/wifi/AccessPoint;->getLevel()I

    move-result v10

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_d

    const v21, 0x7f07001f

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    const v21, 0x7f0b0466

    aget-object v22, v17, v10

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settingsstock/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingsstock/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    const v21, 0x7f0b0468

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "Mbps"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settingsstock/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v21

    const v22, 0x7f0400af

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    const v21, 0x7f08007b

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    move-object/from16 v22, v0

    const v23, 0x7f0b0465

    invoke-interface/range {v22 .. v23}, Lcom/android/settingsstock/ext/IWifiExt;->getSecurityText(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v21, 0x7f0800ee

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/settingsstock/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v21, v0

    sget-object v22, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v16, 0x1

    :goto_4
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    const-string v21, "WifiConfigController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "HostAddress : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v21, "WifiConfigController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Address Length : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    const v21, 0x7f0b017f

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settingsstock/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x10

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    const v21, 0x7f0b0180

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settingsstock/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v21, v0

    sget-object v22, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    const/16 v16, 0x1

    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEdit:Z

    move/from16 v21, v0

    if-eqz v21, :cond_17

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->showSecurityFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->showIpConfigFields()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->showProxyFields()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f08021a

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f08021b

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f08021b

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f08021c

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEdit:Z

    move/from16 v21, v0

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0b0490

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f080219

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_18
    if-nez v18, :cond_19

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0b048c

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/settingsstock/wifi/AccessPoint;->security:I

    move/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Lcom/android/settingsstock/ext/IWifiExt;->shouldAddForgetButton(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0b048e

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_19
    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/settingsstock/ext/IWifiExt;->shouldSetDisconnectButton()Z

    move-result v21

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    move-object/from16 v21, v0

    const v22, 0x7f0b012d

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f080206

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method public static addQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400af

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    if-eqz v6, :cond_1

    move v7, v8

    :goto_1
    return v7

    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v4, v1}, Lcom/android/settingsstock/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_3
    if-nez v6, :cond_4

    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v7, v9

    goto :goto_1

    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    :catch_0
    move-exception v0

    const v6, 0x7f0b0310

    goto :goto_3

    :cond_4
    move v7, v8

    goto :goto_1
.end method

.method private isWEPKeyValid(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWEPKeyType:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWEPKeyType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWEPKeyType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_4

    const/16 v4, 0x20

    if-ne v0, v4, :cond_5

    :cond_4
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    :cond_5
    const/4 v4, 0x5

    if-eq v0, v4, :cond_6

    const/16 v4, 0xd

    if-eq v0, v4, :cond_6

    const/16 v4, 0x10

    if-ne v0, v4, :cond_7

    :cond_6
    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    :cond_7
    move v2, v3

    goto :goto_0
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0b0475

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    aput-object v4, v2, v6

    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    aput-object v4, v1, v6

    array-length v5, v2

    invoke-static {v2, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    goto :goto_0
.end method

.method public static makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    if-nez p0, :cond_0

    const-string v1, "error"

    invoke-static {v1}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    const-string v1, "SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@wlan.mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".mcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "WifiConfigController"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "AKA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-eqz v3, :cond_3

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settingsstock/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 11

    const v10, 0x7f080208

    const/4 v9, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080206

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :cond_0
    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f080209

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f08020a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f08020b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f08020c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f08020d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_6

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    invoke-virtual {v6}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 9

    const v8, 0x7f080202

    const v7, 0x7f080201

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0801fe

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f080203

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f080204

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f080205

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f080229

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    invoke-interface {v3, v2}, Lcom/android/settingsstock/ext/IWifiExt;->setProxyText(Landroid/widget/TextView;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 13

    const v12, 0x7f0801e5

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;

    iget-object v6, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v5, v6, v7}, Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    const-string v5, "WifiConfigController"

    const-string v6, "add network,mAccessPointSecurity != AccessPoint.SECURITY_EAP"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801f2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080216

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801f2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080215

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080215

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080215

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iget-boolean v6, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mHex:Z

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    iget v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v5, v10, :cond_5

    :cond_5
    iget v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801f2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080216

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080217

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080218

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v6, "WAPIASCERT_"

    invoke-direct {p0, v5, v6}, Lcom/android/settingsstock/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    const-string v6, "WAPIUSERCERT_"

    invoke-direct {p0, v5, v6}, Lcom/android/settingsstock/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    if-eq v5, v11, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v6, "WAPIASCERT_"

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->ca_cert2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    const-string v6, "WAPIUSERCERT_"

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080216

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801c2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080215

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    if-eq v5, v11, :cond_7

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v6, 0x7f0b0474

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(I)V

    :cond_7
    iget v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_8

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801f7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080212

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801f7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080212

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-nez v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "WifiConfigController"

    const-string v6, "add network,Security is AccessPoint.SECURITY_EAP"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801f8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07007b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801f9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801fa

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0801fd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v6, "CACERT_"

    invoke-direct {p0, v5, v6}, Lcom/android/settingsstock/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v6, "USRPKEY_"

    invoke-direct {p0, v5, v6}, Lcom/android/settingsstock/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    if-eq v5, v11, :cond_a

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settingsstock/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v5, "auth="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v6, "auth="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/settingsstock/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    :goto_1
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v6, "keystore://CACERT_"

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v6, "USRPKEY_"

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080213

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_d

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080220

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080221

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080222

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080223

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_f

    :cond_b
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    if-eq v5, v11, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingsstock/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    const-string v6, "\"0\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v5, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-direct {p0, v5, v4}, Lcom/android/settingsstock/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080220

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080221

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080222

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f080223

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    const-string v6, "\"1\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    :cond_f
    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f08021e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private switchWlanSecuritySpinner(Landroid/widget/Spinner;)V
    .locals 3

    const/16 v2, 0x8

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f08020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f080210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 13

    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0b04a1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    const/4 v9, -0x1

    :try_start_1
    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_2

    const/16 v10, 0x20

    if-le v9, v10, :cond_3

    :cond_2
    const v10, 0x7f0b04a4

    goto :goto_0

    :catch_0
    move-exception v3

    const v10, 0x7f0b04a1

    goto :goto_0

    :cond_3
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    :try_start_2
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b04a6

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_4

    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b04ac

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :try_start_4
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    :catch_2
    move-exception v3

    const v10, 0x7f0b04a2

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    :catch_3
    move-exception v3

    const v10, 0x7f0b04a3

    goto/16 :goto_0

    :catch_4
    move-exception v3

    const v10, 0x7f0b04a3

    goto/16 :goto_0

    :catch_5
    move-exception v10

    goto :goto_2

    :catch_6
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settingsstock/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/wifi/WifiConfigController$1;-><init>(Lcom/android/settingsstock/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public closeSpinnerDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    invoke-interface {v0}, Lcom/android/settingsstock/ext/IWifiExt;->closeSpinnerDialog()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissPopup()V

    goto/16 :goto_0
.end method

.method enableSubmitIfAppropriate()V
    .locals 6

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settingsstock/wifi/WifiConfigController;->isWEPKeyValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    iget v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lt v3, v5, :cond_4

    :cond_3
    iget v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lt v3, v5, :cond_4

    const/16 v3, 0x40

    iget-object v4, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-lt v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mHex:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iget v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    :cond_a
    if-eqz v1, :cond_c

    :cond_b
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/16 v10, 0x22

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mConfigUi:Lcom/android/settingsstock/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settingsstock/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    if-eq v7, v11, :cond_0

    iget-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEdit:Z

    if-nez v7, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string v7, "none"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v7, "-1"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    const-string v7, "none"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->PCSC:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settingsstock/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_1
    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    invoke-interface {v7}, Lcom/android/settingsstock/ext/IWifiExt;->getPriority()I

    move-result v7

    if-ltz v7, :cond_1

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mExt:Lcom/android/settingsstock/ext/IWifiExt;

    invoke-interface {v7}, Lcom/android/settingsstock/ext/IWifiExt;->getPriority()I

    move-result v7

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    :cond_1
    iget v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v7, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    if-ne v7, v11, :cond_3

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settingsstock/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingsstock/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settingsstock/wifi/AccessPoint;->networkId:I

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :pswitch_0
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    new-instance v7, Landroid/net/LinkProperties;

    iget-object v8, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v7, v8}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    :pswitch_1
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v5

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWEPKeyIndex:Landroid/widget/Spinner;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWEPKeyIndex:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-eq v7, v11, :cond_5

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWEPKeyIndex:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    :cond_5
    const/16 v7, 0xa

    if-eq v5, v7, :cond_6

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_6

    const/16 v7, 0x20

    if-ne v5, v7, :cond_7

    :cond_6
    const-string v7, "[0-9A-Fa-f]*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v6, v7, v4

    :goto_3
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_2

    :cond_7
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_3

    :pswitch_2
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[0-9A-Fa-f]{64}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_3
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    const-string v10, "AKA"

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v10, "SIM"

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_c

    const-string v7, ""

    :goto_4
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_d

    const-string v7, ""

    :goto_5
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_e

    const-string v7, ""

    :goto_6
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_f

    move v3, v8

    :goto_7
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v3, :cond_10

    const-string v7, ""

    :goto_8
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v3, :cond_11

    const-string v7, "0"

    :goto_9
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v3, :cond_12

    const-string v7, ""

    :goto_a
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-nez v7, :cond_13

    const-string v7, ""

    :goto_b
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-nez v7, :cond_14

    const-string v7, ""

    :goto_c
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v10, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    :cond_9
    const-string v10, "SIM"

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v10, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "((String) mSimSlot.getSelectedItem()) "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "R.string.eap_sim_slot_0 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f0b0120

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f0b0120

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v7, v9}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SIM"

    invoke-static {v7, v8}, Lcom/android/settingsstock/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.IMSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "0"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.SIMSLOT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0"

    invoke-static {v9}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "rild"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->PCSC:Ljava/lang/String;

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.PCSC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "rild"

    invoke-static {v9}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_d
    const-string v8, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eap-sim, choose sim_slot"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eap-sim, config.IMSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eap-sim, config.SIMSLOT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_e
    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eap-sim/aka, config.toString(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "auth="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "keystore://CACERT_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_5

    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "keystore://USRCERT_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    :cond_f
    move v3, v9

    goto/16 :goto_7

    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRPKEY_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_8

    :cond_11
    const-string v7, "1"

    goto/16 :goto_9

    :cond_12
    const-string v7, "keystore"

    goto/16 :goto_a

    :cond_13
    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_b

    :cond_14
    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_c

    :cond_15
    const v7, 0x7f0b0121

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v7, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SIM"

    invoke-static {v7, v8}, Lcom/android/settingsstock/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.IMSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "1"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.SIMSLOT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0"

    invoke-static {v9}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "rild"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->PCSC:Ljava/lang/String;

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.PCSC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "rild"

    invoke-static {v9}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_16
    const-string v10, "AKA"

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const v7, 0x7f0b0120

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v7, v9}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AKA"

    invoke-static {v7, v8}, Lcom/android/settingsstock/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.IMSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "0"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    const-string v7, "rild"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->PCSC:Ljava/lang/String;

    :cond_17
    :goto_f
    const-string v8, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eap-aka, choose sim_slot"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eap-aka, config.IMSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "eap-aka, config.SIMSLOT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_18
    const v7, 0x7f0b0121

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {v7, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AKA"

    invoke-static {v7, v8}, Lcom/android/settingsstock/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config.IMSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->IMSI:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "1"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SIMSLOT:Ljava/lang/String;

    const-string v7, "rild"

    invoke-static {v7}, Lcom/android/settingsstock/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->PCSC:Ljava/lang/String;

    goto/16 :goto_f

    :pswitch_4
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getConfig(), mHex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mHex:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mHex:Z

    if-eqz v7, :cond_19

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    :cond_19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_5
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x6

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, ""

    :goto_10
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, ""

    :goto_11
    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-nez v7, :cond_1c

    move v2, v8

    :goto_12
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_1d

    const-string v7, ""

    :goto_13
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_1e

    const-string v7, "0"

    :goto_14
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v2, :cond_1f

    const-string v7, ""

    :goto_15
    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "keystore://WAPIASCERT_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    :cond_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "keystore://WAPIUSERCERT_"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    :cond_1c
    move v2, v9

    goto :goto_12

    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "keystore://WAPIUSERCERT_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mWapiClientCert:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_13

    :cond_1e
    const-string v7, "1"

    goto :goto_14

    :cond_1f
    const-string v7, "keystore"

    goto :goto_15

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f08021c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0801e5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v1, 0x80

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08021b

    if-ne v1, v2, :cond_4

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080215

    if-ne v1, v2, :cond_5

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mHex:Z

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick mHex is="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mHex:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",enableSubmitIfAppropriate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080228

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    iput p3, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const-string v0, "persist.sys.wlan"

    const-string v1, "wifi-wapi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wapi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->showSecurityFields()V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/settingsstock/wifi/AccessPoint;->isWFATestSupported()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mAccessPointSecurity:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
