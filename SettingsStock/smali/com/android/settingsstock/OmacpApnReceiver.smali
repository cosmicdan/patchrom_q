.class public Lcom/android/settingsstock/OmacpApnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmacpApnReceiver.java"


# static fields
.field private static final ACTION_OMACP:Ljava/lang/String; = "com.mediatek.omacp.settings"

.field private static final ACTION_OMACP_RESULT:Ljava/lang/String; = "com.mediatek.omacp.settings.result"

.field private static final APN_APN:Ljava/lang/String; = "NAP-ADDRESS"

.field private static final APN_AUTH_TYPE:Ljava/lang/String; = "AUTHTYPE"

.field private static final APN_ID:Ljava/lang/String; = "APN-ID"

.field private static final APN_MMSC:Ljava/lang/String; = "MMSC"

.field private static final APN_MMS_PORT:Ljava/lang/String; = "MMS-PORT"

.field private static final APN_MMS_PROXY:Ljava/lang/String; = "MMS-PROXY"

.field private static final APN_NAME:Ljava/lang/String; = "NAP-NAME"

.field private static final APN_NAP_ID:Ljava/lang/String; = "NAPID"

.field private static final APN_PASSWORD:Ljava/lang/String; = "AUTHSECRET"

.field private static final APN_PORT:Ljava/lang/String; = "PORTNBR"

.field private static final APN_PROXY:Ljava/lang/String; = "PXADDR"

.field private static final APN_PROXY_ID:Ljava/lang/String; = "PROXY-ID"

.field private static final APN_SERVER:Ljava/lang/String; = "SERVER"

.field private static final APN_SETTING_INTENT:Ljava/lang/String; = "apn_setting_intent"

.field private static final APN_TYPE:Ljava/lang/String; = "APN-TYPE"

.field private static final APN_USERNAME:Ljava/lang/String; = "AUTHNAME"

.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final APP_ID_APN:Ljava/lang/String; = "apn"

.field private static final CU_3GNET_NAME:Ljava/lang/String; = "3gnet"

.field private static final CU_3GWAP_NAME:Ljava/lang/String; = "3gwap"

.field private static final CU_MMS_TYPE:Ljava/lang/String; = "mms"

.field private static final GEMINI_SUPPORT:Z = true

.field private static final NAP_AUTH_INFO:Ljava/lang/String; = "NAPAUTHINFO"

.field private static final OMACP_CONTEXT:Ljava/lang/String; = "context"

.field private static final PORT:Ljava/lang/String; = "PORT"

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_SINGLE:I = 0x2

.field private static final SIM_CARD_UNDEFINED:I = -0x1

.field private static final SIM_ID:Ljava/lang/String; = "simId"

.field private static final TAG:Ljava/lang/String; = "OmacpApnReceiver"

.field private static sAuthType:I


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnId:Ljava/lang/String;

.field private mApnIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mApnToUseId:J

.field private mAppId:Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

.field private mIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mMcc:Ljava/lang/String;

.field private mMmsPort:Ljava/lang/String;

.field private mMmsProxy:Ljava/lang/String;

.field private mMmsc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNapId:Ljava/lang/String;

.field private mNumeric:Ljava/lang/String;

.field private mOmacpApn:Lcom/android/settingsstock/OmacpApn;

.field private mPassword:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPreferedUri:Landroid/net/Uri;

.field private mProxy:Ljava/lang/String;

.field private mProxyId:Ljava/lang/String;

.field private mResult:Z

.field private mServer:Ljava/lang/String;

.field private mSimId:I

.field private mType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/settingsstock/OmacpApnReceiver;->sAuthType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnToUseId:J

    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private extractAPN(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    const-string v0, "NAP-NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b080d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mName:Ljava/lang/String;

    :cond_1
    const-string v0, "NAP-ADDRESS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApn:Ljava/lang/String;

    const-string v0, "PXADDR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mProxy:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settingsstock/OmacpApnReceiver;->getPort(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/settingsstock/OmacpApnReceiver;->getNapAuthInfo(Landroid/content/Intent;)V

    const-string v0, "SERVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mServer:Ljava/lang/String;

    const-string v0, "MMSC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsc:Ljava/lang/String;

    const-string v0, "MMS-PROXY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsProxy:Ljava/lang/String;

    const-string v0, "MMS-PORT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsPort:Ljava/lang/String;

    const-string v0, "APN-TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mType:Ljava/lang/String;

    const-string v0, "APN-ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    const-string v0, "NAPID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNapId:Ljava/lang/String;

    const-string v0, "PROXY-ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mProxyId:Ljava/lang/String;

    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractAPN: mName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mApn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mServer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mApnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mProxyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mProxyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private forTheOtherCard(Landroid/content/Context;ILandroid/content/ContentValues;)Z
    .locals 12

    const-string v9, "OmacpApnReceiver"

    const-string v10, "for the other card"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    rsub-int/lit8 v7, p2, 0x1

    const/4 v8, 0x0

    packed-switch v7, :pswitch_data_0

    :goto_0
    if-nez v8, :cond_0

    const/4 v9, 0x0

    :goto_1
    return v9

    :pswitch_0
    sget-object v8, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object v8, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    sget-object v8, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/android/settingsstock/OmacpApn;

    iget-object v9, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-direct {v6, p1, v7, v8, v9}, Lcom/android/settingsstock/OmacpApn;-><init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/settingsstock/OmacpApn;->getExistOmacpId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "OmacpApnReceiver"

    const-string v10, "The other card: this apn already exists!"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v4, -0x1

    invoke-virtual {v6, p1, p3}, Lcom/android/settingsstock/OmacpApn;->insert(Landroid/content/Context;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-string v9, "OmacpApnReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The other id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, -0x1

    cmp-long v9, v4, v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMccMnc()Z
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMcc:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMnc:Ljava/lang/String;

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private getNapAuthInfo(Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mUserName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    const/4 v2, -0x1

    sput v2, Lcom/android/settingsstock/OmacpApnReceiver;->sAuthType:I

    const-string v2, "NAPAUTHINFO"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "AUTHNAME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mUserName:Ljava/lang/String;

    const-string v2, "AUTHSECRET"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPassword:Ljava/lang/String;

    const-string v2, "AUTHTYPE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "PAP"

    iget-object v3, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput v2, Lcom/android/settingsstock/OmacpApnReceiver;->sAuthType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "CHAP"

    iget-object v3, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    sput v2, Lcom/android/settingsstock/OmacpApnReceiver;->sAuthType:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    sput v2, Lcom/android/settingsstock/OmacpApnReceiver;->sAuthType:I

    goto :goto_0
.end method

.method private getPort(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPort:Ljava/lang/String;

    const-string v2, "PORT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PORTNBR"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPort:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initState(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "simId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mSimId:I

    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GEMINI_SIM_ID_KEY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "appId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mAppId:Ljava/lang/String;

    iget v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mSimId:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initState: mSimId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mNumeric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mPreferedUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settingsstock/OmacpApnReceiver;->getMccMnc()Z

    move-result v0

    return v0

    :pswitch_0
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    const-string v0, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    const-string v0, "gsm.sim.operator.numeric.2"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    const-string v0, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private insertAPN(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v3, 0x0

    const-string v8, "mms"

    iget-object v9, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    new-instance v8, Lcom/android/settingsstock/OmacpApn;

    iget v9, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mSimId:I

    iget-object v10, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-direct {v8, p1, v9, v10, v11}, Lcom/android/settingsstock/OmacpApn;-><init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mOmacpApn:Lcom/android/settingsstock/OmacpApn;

    iget-object v8, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mOmacpApn:Lcom/android/settingsstock/OmacpApn;

    invoke-virtual {v8}, Lcom/android/settingsstock/OmacpApn;->getExistOmacpId()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    iput-boolean v12, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mResult:Z

    if-nez v4, :cond_0

    iget-object v8, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnToUseId:J

    :cond_0
    if-nez v3, :cond_1

    iget-object v8, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mOmacpApn:Lcom/android/settingsstock/OmacpApn;

    invoke-virtual {v8, p1, p2}, Lcom/android/settingsstock/OmacpApn;->insert(Landroid/content/Context;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    iput-boolean v12, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mResult:Z

    if-nez v4, :cond_1

    iput-wide v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnToUseId:J

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendFeedback(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.mediatek.omacp.settings.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appId"

    const-string v2, "apn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    iget-boolean v2, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mResult:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "apn_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, p4, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :catch_0
    move-exception v0

    const-string v4, "OmacpApnReceiver"

    const-string v5, "SetCurrentApn SQLException happened!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private validateProfile(Landroid/content/ContentValues;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mProxy:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPort:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mUserName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mServer:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsc:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsProxy:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mMmsPort:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    sget v1, Lcom/android/settingsstock/OmacpApnReceiver;->sAuthType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNapId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mProxyId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settingsstock/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settingsstock/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/settingsstock/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settingsstock/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v0, "com.mediatek.omacp.settings"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mResult:Z

    const-string v0, "apn_setting_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/OmacpApnReceiver;->sendFeedback(Landroid/content/Context;)V

    const-string v0, "OmacpApnReceiver"

    const-string v1, "mIntentList == null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn list size is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v11, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settingsstock/OmacpApnReceiver;->sendFeedback(Landroid/content/Context;)V

    const-string v0, "OmacpApnReceiver"

    const-string v1, "Intent list size is wrong"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settingsstock/OmacpApnReceiver;->initState(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settingsstock/OmacpApnReceiver;->sendFeedback(Landroid/content/Context;)V

    const-string v0, "OmacpApnReceiver"

    const-string v1, "Can not get MCC+MNC"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_5

    iget-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/android/settingsstock/OmacpApnReceiver;->extractAPN(Landroid/content/Intent;Landroid/content/Context;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/settingsstock/OmacpApnReceiver;->validateProfile(Landroid/content/ContentValues;)Z

    const-string v0, "46001"

    iget-object v1, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    iget-object v3, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mType:Ljava/lang/String;

    iget v4, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mSimId:I

    iget-object v5, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApn:Ljava/lang/String;

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->updateApn(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    invoke-interface {v0}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->getApnUserId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnToUseId:J

    iget-object v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mExt:Lcom/android/settingsstock/ext/ISettingsMiscExt;

    invoke-interface {v0}, Lcom/android/settingsstock/ext/ISettingsMiscExt;->getResult()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mResult:Z

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/android/settingsstock/OmacpApnReceiver;->insertAPN(Landroid/content/Context;Landroid/content/ContentValues;)V

    iget v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mSimId:I

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settingsstock/OmacpApnReceiver;->forTheOtherCard(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    goto :goto_2

    :cond_5
    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mApnToUseId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnToUseId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnToUseId:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mApnToUseId:J

    iget-object v3, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/settingsstock/OmacpApnReceiver;->setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingsstock/OmacpApnReceiver;->mResult:Z

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settingsstock/OmacpApnReceiver;->sendFeedback(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
