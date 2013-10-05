.class public Lcom/mediatek/op/telephony/TetheringExt;
.super Ljava/lang/Object;
.source "TetheringExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ITetheringExt;


# static fields
.field static final TAG:Ljava/lang/String; = "TetheringExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferredTetheringApn(Ljava/util/ArrayList;)Lcom/mediatek/common/telephony/IApnSetting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/IApnSetting;",
            ">;)",
            "Lcom/mediatek/common/telephony/IApnSetting;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TetheringExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBuildWaitingApns(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/IApnSetting;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onCreateAllApnList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/IApnSetting;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onDataSetupComplete(Lcom/mediatek/common/telephony/IApnContext;)V
    .locals 0

    return-void
.end method

.method public setPreferredTetheringApn(I)V
    .locals 0

    return-void
.end method
