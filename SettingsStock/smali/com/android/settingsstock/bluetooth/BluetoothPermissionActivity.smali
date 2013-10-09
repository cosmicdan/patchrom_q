.class public Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionActivity"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRememberChoice:Landroid/widget/CheckBox;

.field private mRememberChoiceValue:Z

.field private mReturnClass:Ljava/lang/String;

.field private mReturnPackage:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    new-instance v0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    return p1
.end method

.method private createConnectionDialogView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->createConnectionDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createConnectionDisplayText()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f0b0658

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const v2, 0x7f0b02f0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createPhonebookDialogView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->createPhonebookDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity$2;-><init>(Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createPhonebookDisplayText()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f0b0658

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const v2, 0x7f0b02f2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->dismiss()V

    return-void
.end method

.method private onNegative()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegative mRememberChoiceValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->savePhonebookPermissionChoice(I)V

    :cond_0
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1, v3}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->finish()V

    return-void
.end method

.method private onPositive()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositive mRememberChoiceValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->savePhonebookPermissionChoice(I)V

    :cond_0
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    iget-boolean v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->finish()V

    return-void
.end method

.method private savePhonebookPermissionChoice(I)V
    .locals 6

    invoke-static {p0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settingsstock/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingsstock/bluetooth/LocalBluetoothAdapter;Lcom/android/settingsstock/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settingsstock/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    goto :goto_0
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private showConnectionDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    const v1, 0x7f0b02ee

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->createConnectionDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x7f0b0267

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f0b0268

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    return-void
.end method

.method private showPhonebookDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    const v1, 0x7f0b02f1

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->createPhonebookDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->onPositive()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->onNegative()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BluetoothPermissionActivity"

    const-string v4, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    const-string v3, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->showConnectionDialog()V

    :goto_1
    iget-object v3, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    invoke-direct {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->showPhonebookDialog()V

    goto :goto_1

    :cond_2
    const-string v3, "BluetoothPermissionActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: bad request type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingsstock/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
