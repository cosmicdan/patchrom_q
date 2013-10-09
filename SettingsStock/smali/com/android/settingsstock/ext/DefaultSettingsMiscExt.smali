.class public Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;
.super Ljava/lang/Object;
.source "DefaultSettingsMiscExt.java"

# interfaces
.implements Lcom/android/settingsstock/ext/ISettingsMiscExt;


# static fields
.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_SINGLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DefaultSettingsMiscExt"


# instance fields
.field private mApnToUseId:J

.field private mResult:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;->mApnToUseId:J

    return-void
.end method

.method private forTheOtherCard(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const-string v10, "DefaultSettingsMiscExt"

    const-string v11, "for the other card"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    rsub-int/lit8 v8, p2, 0x1

    const/4 v9, 0x0

    packed-switch v8, :pswitch_data_0

    :goto_0
    if-nez v9, :cond_0

    const/4 v10, 0x0

    :goto_1
    return v10

    :pswitch_0
    sget-object v9, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    sget-object v9, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :pswitch_2
    sget-object v9, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/settingsstock/ext/OmacpApn;

    move-object/from16 v0, p4

    invoke-direct {v7, p1, v8, v9, v0}, Lcom/android/settingsstock/ext/OmacpApn;-><init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/settingsstock/ext/OmacpApn;->getExistOmacpId()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "DefaultSettingsMiscExt"

    const-string v11, "The other card: this apn already exists!"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v5, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, p1, v0}, Lcom/android/settingsstock/ext/OmacpApn;->insert(Landroid/content/Context;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-string v10, "DefaultSettingsMiscExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The other id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, -0x1

    cmp-long v10, v5, v10

    if-nez v10, :cond_3

    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    const/4 v10, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private insertAPN(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const/4 v6, 0x0

    const-string v12, "mms"

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    new-instance v8, Lcom/android/settingsstock/ext/OmacpApn;

    move/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v8, p1, v0, v1, v2}, Lcom/android/settingsstock/ext/OmacpApn;-><init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/settingsstock/ext/OmacpApn;->getExistOmacpId()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v11, :cond_0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v6, 0x1

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;->mResult:Z

    if-nez v7, :cond_0

    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;->mApnToUseId:J

    :cond_0
    if-nez v6, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Lcom/android/settingsstock/ext/OmacpApn;->insert(Landroid/content/Context;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;->mResult:Z

    if-nez v7, :cond_1

    iput-wide v4, p0, Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;->mApnToUseId:J

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getApnPref(Landroid/preference/PreferenceGroup;I[I)Landroid/preference/Preference;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getApnUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;->mApnToUseId:J

    return-wide v0
.end method

.method public getDataUsageBackgroundStrByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;->mResult:Z

    return v0
.end method

.method public getTetherWifiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x1040410

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWifiToggleCouldDisabled(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeTetherApnSettings(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public setTimeoutPrefTitle(Landroid/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public updateApn(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct/range {p0 .. p7}, Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;->insertAPN(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/settingsstock/ext/DefaultSettingsMiscExt;->forTheOtherCard(Landroid/content/Context;ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
