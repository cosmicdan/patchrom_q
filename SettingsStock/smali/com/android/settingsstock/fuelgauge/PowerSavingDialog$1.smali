.class Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$1;
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

    iput-object p1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$1;->this$0:Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$1;->this$0:Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;

    invoke-virtual {v0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->finish()V

    return-void
.end method
