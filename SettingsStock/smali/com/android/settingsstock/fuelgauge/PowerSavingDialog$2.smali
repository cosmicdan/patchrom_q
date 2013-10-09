.class Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$2;
.super Ljava/lang/Object;
.source "PowerSavingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->powerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$2;->this$0:Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$2;->this$0:Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;

    const-class v2, Lcom/android/settingsstock/fuelgauge/PowerSavingSetting;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$2;->this$0:Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$2;->this$0:Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;

    invoke-virtual {v1}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->finish()V

    return-void
.end method
