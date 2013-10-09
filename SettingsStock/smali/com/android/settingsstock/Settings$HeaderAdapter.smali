.class Lcom/android/settingsstock/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# static fields
.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field private static final HEADER_TYPE_COUNT:I = 0x3

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_SWITCH:I = 0x2


# instance fields
.field private mAuthHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSimEnable:Z

.field private final mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settingsstock/accounts/AuthenticatorHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settingsstock/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-boolean v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mIsSimEnable:Z

    iput-object p3, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/settingsstock/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settingsstock/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080251

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080252

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleDisableHolder(Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mIsSimEnable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mIsSimEnable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    const/16 v0, 0x4b

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleEnableHolder(Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-static {v1}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    const/4 v7, 0x0

    if-nez p2, :cond_0

    new-instance v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settingsstock/Settings$1;)V

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    packed-switch v2, :pswitch_data_1

    :goto_2
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f080250

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    invoke-direct {p0, v3, v7}, Lcom/android/settingsstock/Settings$HeaderAdapter;->handleDisableHolder(Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    :goto_3
    return-object v7

    :pswitch_0
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x1010208

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v8, v7

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04006a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f080023

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f08010a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    :pswitch_2
    iget-object v8, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040069

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f080023

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_0
    move-object v7, p2

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;

    goto/16 :goto_1

    :pswitch_3
    iget-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_4
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f080251

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

    iget-object v9, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settingsstock/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    :goto_4
    :pswitch_5
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_2

    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settingsstock/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/android/settingsstock/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    iget-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    iget-object v8, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    iget-object v9, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_4

    :cond_2
    iget-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v9, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_3
    iget-object v8, v3, Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0, v3, v7}, Lcom/android/settingsstock/Settings$HeaderAdapter;->handleEnableHolder(Lcom/android/settingsstock/Settings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimManagementAvailable(Landroid/content/Context;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enable_internet_call_value"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isInternetCallEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    :goto_1
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isVoipSupported = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isHasSimCards = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mIsSimEnable:Z

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiEnabler;->pause()V

    iget-object v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settingsstock/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WifiEnabler;->resume()V

    iget-object v0, p0, Lcom/android/settingsstock/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settingsstock/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/BluetoothEnabler;->resume()V

    return-void
.end method
