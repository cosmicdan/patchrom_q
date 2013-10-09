.class public Lcom/android/settingsstock/ext/DefaultSimRoamingExt;
.super Ljava/lang/Object;
.source "DefaultSimRoamingExt.java"

# interfaces
.implements Lcom/android/settingsstock/ext/ISimRoamingExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRoamingWarningMsg(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSummary(Landroid/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public showDialog(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
