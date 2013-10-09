.class public Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;
.super Landroid/app/Activity;
.source "PowerSavingDialog.java"


# instance fields
.field private batteryLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->batteryLevel:I

    return-void
.end method

.method private powerDialog()V
    .locals 11

    const v10, 0x7f0b0944

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f040059

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0946

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->batteryLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0947

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v7, 0x7f08001c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0800e6

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$2;

    invoke-direct {v8, p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$2;-><init>(Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v9, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$1;

    invoke-direct {v9, p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$1;-><init>(Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v7, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$3;

    invoke-direct {v7, p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$3;-><init>(Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->batteryLevel:I

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->powerDialog()V

    return-void
.end method
