.class public Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;
.super Landroid/app/DialogFragment;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockdownConfigFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method private static getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "LOCKDOWN_VPN"

    invoke-static {p1, v3}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->getStringOrNull(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v5, v3, v5

    #calls: Lcom/android/settingsstock/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    invoke-static {p1, v3}, Lcom/android/settingsstock/vpn2/VpnSettings;->access$100(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    const v4, 0x7f0b08f9

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    :cond_0
    iget-object v3, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static show(Lcom/android/settingsstock/vpn2/VpnSettings;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-direct {v0}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "lockdown"

    invoke-virtual {v0, v1, v2}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->initProfiles(Landroid/security/KeyStore;Landroid/content/res/Resources;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0b08f7

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0400a1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x102000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v6, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;

    iget-object v7, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mTitles:Ljava/util/List;

    invoke-direct {v6, v1, v7}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment$TitleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v6, p0, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I

    invoke-virtual {v4, v6, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x104000a

    new-instance v7, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment$1;

    invoke-direct {v7, p0, v4, v3, v1}, Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment$1;-><init>(Lcom/android/settingsstock/vpn2/VpnSettings$LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
