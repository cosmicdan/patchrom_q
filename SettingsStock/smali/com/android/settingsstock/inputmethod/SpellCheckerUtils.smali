.class public Lcom/android/settingsstock/inputmethod/SpellCheckerUtils;
.super Ljava/lang/Object;
.source "SpellCheckerUtils.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settingsstock/inputmethod/SpellCheckerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/inputmethod/SpellCheckerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentSpellChecker(Landroid/view/textservice/TextServicesManager;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledSpellCheckers(Landroid/view/textservice/TextServicesManager;)[Landroid/view/textservice/SpellCheckerInfo;
    .locals 1

    invoke-virtual {p0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getSpellCheckersEnabled(Landroid/view/textservice/TextServicesManager;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setCurrentSpellChecker(Landroid/view/textservice/TextServicesManager;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    return-void
.end method

.method public static setSpellCheckersEnabled(Landroid/view/textservice/TextServicesManager;Z)V
    .locals 0

    return-void
.end method
