.class public Lcom/android/settingsstock/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ApnPreference"

.field private static sCurrentChecked:Landroid/widget/CompoundButton;

.field private static sIsCU:Z

.field private static sSelectedKey:Ljava/lang/String;


# instance fields
.field private mEditable:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSimId:I

.field private mSourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingsstock/ApnPreference;->sSelectedKey:Ljava/lang/String;

    sput-object v0, Lcom/android/settingsstock/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settingsstock/ApnPreference;->sIsCU:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/ApnPreference;->mSelectable:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settingsstock/ApnPreference;->mSourceType:I

    iput v1, p0, Lcom/android/settingsstock/ApnPreference;->mSimId:I

    iput-boolean v2, p0, Lcom/android/settingsstock/ApnPreference;->mEditable:Z

    invoke-direct {p0}, Lcom/android/settingsstock/ApnPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/ApnPreference;->mSelectable:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settingsstock/ApnPreference;->mSourceType:I

    iput v1, p0, Lcom/android/settingsstock/ApnPreference;->mSimId:I

    iput-boolean v2, p0, Lcom/android/settingsstock/ApnPreference;->mEditable:Z

    invoke-direct {p0}, Lcom/android/settingsstock/ApnPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/settingsstock/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v2, p0, Lcom/android/settingsstock/ApnPreference;->mSelectable:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settingsstock/ApnPreference;->mSourceType:I

    iput v1, p0, Lcom/android/settingsstock/ApnPreference;->mSimId:I

    iput-boolean v2, p0, Lcom/android/settingsstock/ApnPreference;->mEditable:Z

    invoke-direct {p0}, Lcom/android/settingsstock/ApnPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public getSourceType()I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/ApnPreference;->mSourceType:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x1010001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    check-cast v1, Landroid/widget/RadioButton;

    iget-boolean v5, p0, Lcom/android/settingsstock/ApnPreference;->mSelectable:Z

    if-eqz v5, :cond_3

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settingsstock/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/android/settingsstock/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settingsstock/ApnPreference;->sSelectedKey:Ljava/lang/String;

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settingsstock/ApnPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settingsstock/ApnPreference;->mProtectFromCheckedChange:Z

    :cond_1
    :goto_0
    const/high16 v5, 0x101

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object v3

    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settingsstock/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settingsstock/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/settingsstock/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settingsstock/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    sput-object p1, Lcom/android/settingsstock/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/ApnPreference;->sSelectedKey:Ljava/lang/String;

    sget-object v0, Lcom/android/settingsstock/ApnPreference;->sSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sput-object v3, Lcom/android/settingsstock/ApnPreference;->sCurrentChecked:Landroid/widget/CompoundButton;

    sput-object v3, Lcom/android/settingsstock/ApnPreference;->sSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    const/high16 v6, 0x101

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget v6, p0, Lcom/android/settingsstock/ApnPreference;->mSimId:I

    if-ne v6, v5, :cond_1

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    int-to-long v6, v3

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v1, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "simId"

    iget v7, p0, Lcom/android/settingsstock/ApnPreference;->mSimId:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "readOnly"

    iget-boolean v7, p0, Lcom/android/settingsstock/ApnPreference;->mEditable:Z

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/settingsstock/ApnPreference;->mSimId:I

    if-nez v6, :cond_2

    sget-object v2, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setApnEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/ApnPreference;->mEditable:Z

    return-void
.end method

.method public setChecked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingsstock/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingsstock/ApnPreference;->sSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/ApnPreference;->mSelectable:Z

    return-void
.end method

.method public setSimId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/ApnPreference;->mSimId:I

    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingsstock/ApnPreference;->mSourceType:I

    return-void
.end method
