.class final Lcom/android/settingsstock/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final D:Z = true

.field private static final KEY_ERROR:Ljava/lang/String; = "errorMessage"

.field static final V:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0b02d4

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b02da

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b02d8

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b02d9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0b03e0

    invoke-static {p0, p1, v0}, Lcom/android/settingsstock/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4

    const v2, 0x104000a

    if-nez p1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/preference/PreferenceFragment;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v1, Lcom/android/settingsstock/bluetooth/ErrorDialogFragment;

    invoke-direct {v1}, Lcom/android/settingsstock/bluetooth/ErrorDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "errorMessage"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/bluetooth/ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "Error"

    invoke-virtual {v1, v5, v6}, Lcom/android/settingsstock/bluetooth/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
