.class public Lcom/android/settingsstock/FactoryResetActivity;
.super Landroid/app/Activity;
.source "FactoryResetActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/FactoryResetActivity$ResetListener;
    }
.end annotation


# static fields
.field static final ERASE_EXTERNAL_EXTRA:Ljava/lang/String; = "erase_sd"

.field static erase_sd:Z


# instance fields
.field container:Landroid/widget/LinearLayout;

.field mExternalStorage:Landroid/widget/CheckBox;

.field reset_phone:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settingsstock/FactoryResetActivity;->erase_sd:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/FactoryResetActivity;->setContentView(I)V

    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/FactoryResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settingsstock/FactoryResetActivity;->mExternalStorage:Landroid/widget/CheckBox;

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/FactoryResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settingsstock/FactoryResetActivity;->container:Landroid/widget/LinearLayout;

    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/FactoryResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settingsstock/FactoryResetActivity;->reset_phone:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settingsstock/FactoryResetActivity;->reset_phone:Landroid/widget/Button;

    new-instance v1, Lcom/android/settingsstock/FactoryResetActivity$ResetListener;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/FactoryResetActivity$ResetListener;-><init>(Lcom/android/settingsstock/FactoryResetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/FactoryResetActivity;->container:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settingsstock/FactoryResetActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/FactoryResetActivity$1;-><init>(Lcom/android/settingsstock/FactoryResetActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
