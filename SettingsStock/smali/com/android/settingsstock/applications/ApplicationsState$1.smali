.class final Lcom/android/settingsstock/applications/ApplicationsState$1;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/applications/ApplicationsState$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;)I
    .locals 6

    const/high16 v5, 0x80

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move v0, v2

    :goto_0
    iget-object v4, p2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_2

    iget-object v4, p2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settingsstock/applications/ApplicationsState$1;->sCollator:Ljava/text/Collator;

    iget-object v3, p1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingsstock/applications/ApplicationsState$1;->compare(Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;)I

    move-result v0

    return v0
.end method
