.class Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment$2;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;

    iget-object v1, v1, Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;

    #calls: Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/android/settingsstock/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    return-void
.end method
