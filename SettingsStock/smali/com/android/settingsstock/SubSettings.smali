.class public Lcom/android/settingsstock/SubSettings;
.super Lcom/android/settingsstock/Settings;
.source "SubSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/SubSettings;->finish()V

    const/4 v0, 0x1

    return v0
.end method
