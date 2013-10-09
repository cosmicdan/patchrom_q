.class Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$3;
.super Ljava/lang/Object;
.source "PowerSavingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$3;->this$0:Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog$3;->this$0:Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;

    invoke-virtual {v0}, Lcom/android/settingsstock/fuelgauge/PowerSavingDialog;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
