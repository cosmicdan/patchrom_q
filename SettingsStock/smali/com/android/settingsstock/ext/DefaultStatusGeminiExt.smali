.class public Lcom/android/settingsstock/ext/DefaultStatusGeminiExt;
.super Ljava/lang/Object;
.source "DefaultStatusGeminiExt.java"

# interfaces
.implements Lcom/android/settingsstock/ext/IStatusGeminiExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultStatusGeminiExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initUI(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 2

    const-string v0, "DefaultStatusGeminiExt"

    const-string v1, "default launched"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
