.class public Lcom/android/settingsstock/ext/DefaultStatusExt;
.super Ljava/lang/Object;
.source "DefaultStatusExt.java"

# interfaces
.implements Lcom/android/settingsstock/ext/IStatusExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateServiceState(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
