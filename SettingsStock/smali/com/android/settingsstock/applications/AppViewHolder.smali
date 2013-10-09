.class public Lcom/android/settingsstock/applications/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public appSize:Landroid/widget/TextView;

.field public checkBox:Landroid/widget/CheckBox;

.field public disabled:Landroid/widget/TextView;

.field public entry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settingsstock/applications/AppViewHolder;
    .locals 3

    if-nez p1, :cond_0

    const v1, 0x7f040049

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settingsstock/applications/AppViewHolder;

    invoke-direct {v0}, Lcom/android/settingsstock/applications/AppViewHolder;-><init>()V

    iput-object p1, v0, Lcom/android/settingsstock/applications/AppViewHolder;->rootView:Landroid/view/View;

    const v1, 0x7f0800c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settingsstock/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    const v1, 0x7f080057

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settingsstock/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settingsstock/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    const v1, 0x7f0800cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settingsstock/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v1, 0x7f0800cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settingsstock/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/applications/AppViewHolder;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method updateSizeText(Ljava/lang/CharSequence;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settingsstock/applications/AppViewHolder;->entry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingsstock/applications/AppViewHolder;->entry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingsstock/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingsstock/applications/AppViewHolder;->entry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settingsstock/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settingsstock/applications/AppViewHolder;->entry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingsstock/applications/AppViewHolder;->entry:Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settingsstock/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
