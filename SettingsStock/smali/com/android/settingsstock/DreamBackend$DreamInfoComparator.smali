.class Lcom/android/settingsstock/DreamBackend$DreamInfoComparator;
.super Ljava/lang/Object;
.source "DreamBackend.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DreamBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DreamInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settingsstock/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultDream:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingsstock/DreamBackend$DreamInfoComparator;->mDefaultDream:Landroid/content/ComponentName;

    return-void
.end method

.method private sortKey(Lcom/android/settingsstock/DreamBackend$DreamInfo;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/settingsstock/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settingsstock/DreamBackend$DreamInfoComparator;->mDefaultDream:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingsstock/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0x31

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/settingsstock/DreamBackend$DreamInfo;Lcom/android/settingsstock/DreamBackend$DreamInfo;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DreamBackend$DreamInfoComparator;->sortKey(Lcom/android/settingsstock/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/settingsstock/DreamBackend$DreamInfoComparator;->sortKey(Lcom/android/settingsstock/DreamBackend$DreamInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settingsstock/DreamBackend$DreamInfo;

    check-cast p2, Lcom/android/settingsstock/DreamBackend$DreamInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingsstock/DreamBackend$DreamInfoComparator;->compare(Lcom/android/settingsstock/DreamBackend$DreamInfo;Lcom/android/settingsstock/DreamBackend$DreamInfo;)I

    move-result v0

    return v0
.end method
