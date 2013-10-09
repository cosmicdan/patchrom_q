.class public Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MemorySettings"


# instance fields
.field private mAdapter:Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;)Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->setFinishOnTouchOutside(Z)V

    const v1, 0x7f0b085e

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->setTitle(I)V

    const v1, 0x7f0b085f

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    const v1, 0x7f0b0860

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    new-instance v1, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008d

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settingsstock/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settingsstock/deviceinfo/MiscFilesHandler;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
