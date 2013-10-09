.class final Lcom/android/settingsstock/applications/ApplicationsState$6;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingsstock/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final mCanBeOnSdCardChecker:Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;

    invoke-direct {v0}, Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$6;->mCanBeOnSdCardChecker:Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$6;->mCanBeOnSdCardChecker:Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0, p1}, Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$6;->mCanBeOnSdCardChecker:Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0}, Lcom/android/settingsstock/applications/CanBeOnSdCardChecker;->init()V

    return-void
.end method
