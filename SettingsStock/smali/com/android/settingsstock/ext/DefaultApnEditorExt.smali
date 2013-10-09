.class public Lcom/android/settingsstock/ext/DefaultApnEditorExt;
.super Ljava/lang/Object;
.source "DefaultApnEditorExt.java"

# interfaces
.implements Lcom/android/settingsstock/ext/IApnEditorExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiApEnablerExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isCmccCard(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "46000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "46002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "46007"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getApnTypeArray(Landroid/content/Context;III)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnTypeArrayByCard(Landroid/content/Context;Ljava/lang/String;ZIII[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    move-object v0, p7

    return-object v0
.end method

.method public getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setPreferenceState(Landroid/preference/DialogPreference;)V
    .locals 0

    return-void
.end method
