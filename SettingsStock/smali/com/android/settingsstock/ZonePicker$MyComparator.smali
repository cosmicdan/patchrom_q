.class Lcom/android/settingsstock/ZonePicker$MyComparator;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/HashMap",
        "<**>;>;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingsstock/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/HashMap;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingsstock/ZonePicker$MyComparator;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<**>;",
            "Ljava/util/HashMap",
            "<**>;)I"
        }
    .end annotation

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settingsstock/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settingsstock/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/settingsstock/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settingsstock/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settingsstock/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v2

    const-string v5, "name"

    iget-object v6, p0, Lcom/android/settingsstock/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v2}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v5

    goto :goto_0

    :cond_3
    check-cast v3, Ljava/lang/Comparable;

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    goto :goto_0
.end method

.method public setSortingKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    return-void
.end method
