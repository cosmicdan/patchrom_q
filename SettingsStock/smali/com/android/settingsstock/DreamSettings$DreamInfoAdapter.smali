.class Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settingsstock/DreamBackend$DreamInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settingsstock/DreamSettings;


# direct methods
.method public constructor <init>(Lcom/android/settingsstock/DreamSettings;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settingsstock/DreamSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;Lcom/android/settingsstock/DreamBackend$DreamInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->activate(Lcom/android/settingsstock/DreamBackend$DreamInfo;)V

    return-void
.end method

.method private activate(Lcom/android/settingsstock/DreamBackend$DreamInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->getCurrentSelection()Lcom/android/settingsstock/DreamBackend$DreamInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/DreamBackend$DreamInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settingsstock/DreamBackend$DreamInfo;->isActive:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/settingsstock/DreamBackend$DreamInfo;->isActive:Z

    iget-object v1, p0, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settingsstock/DreamSettings;

    #getter for: Lcom/android/settingsstock/DreamSettings;->mBackend:Lcom/android/settingsstock/DreamBackend;
    invoke-static {v1}, Lcom/android/settingsstock/DreamSettings;->access$200(Lcom/android/settingsstock/DreamSettings;)Lcom/android/settingsstock/DreamBackend;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settingsstock/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$3;-><init>(Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getCurrentSelection()Lcom/android/settingsstock/DreamBackend$DreamInfo;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;

    iget-boolean v2, v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;

    const-string v6, "getView(%s)"

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    aput-object v10, v9, v7

    #calls: Lcom/android/settingsstock/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v6, v9}, Lcom/android/settingsstock/DreamSettings;->access$400(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v6, 0x1020006

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x1020016

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x1020019

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iget-boolean v6, v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v6, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$1;-><init>(Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    :goto_1
    const v6, 0x7f08000b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v5, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x102001a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v6, v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v6, :cond_4

    const/high16 v6, 0x3f80

    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-boolean v6, v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v6, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$2;

    invoke-direct {v6, p0, v2}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$2;-><init>(Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->createDreamInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_2

    :cond_3
    move v7, v8

    goto :goto_3

    :cond_4
    const v6, 0x3ea8f5c3

    goto :goto_4
.end method
