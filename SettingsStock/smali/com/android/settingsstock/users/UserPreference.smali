.class public Lcom/android/settingsstock/users/UserPreference;
.super Landroid/preference/Preference;
.source "UserPreference.java"


# static fields
.field public static final USERID_UNKNOWN:I = -0xa


# instance fields
.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v3, -0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settingsstock/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingsstock/users/UserPreference;->mSerialNumber:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settingsstock/users/UserPreference;->mUserId:I

    if-eqz p4, :cond_0

    const v0, 0x7f04007c

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/users/UserPreference;->setWidgetLayoutResource(I)V

    iput-object p5, p0, Lcom/android/settingsstock/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    iput p3, p0, Lcom/android/settingsstock/users/UserPreference;->mUserId:I

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3

    const/4 v0, 0x1

    instance-of v1, p1, Lcom/android/settingsstock/users/UserPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserPreference;->getSerialNumber()I

    move-result v1

    check-cast p1, Lcom/android/settingsstock/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settingsstock/users/UserPreference;->getSerialNumber()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/users/UserPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getSerialNumber()I
    .locals 2

    iget v0, p0, Lcom/android/settingsstock/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/settingsstock/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingsstock/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settingsstock/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/users/UserPreference;->mSerialNumber:I

    iget v0, p0, Lcom/android/settingsstock/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/settingsstock/users/UserPreference;->mUserId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settingsstock/users/UserPreference;->mSerialNumber:I

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/users/UserPreference;->mUserId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    const v1, 0x7f080134

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
