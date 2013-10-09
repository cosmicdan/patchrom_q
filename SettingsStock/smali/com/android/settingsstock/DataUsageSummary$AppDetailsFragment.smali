.class public Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# static fields
.field private static final EXTRA_APP:Ljava/lang/String; = "app"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settingsstock/DataUsageSummary;Lcom/android/settingsstock/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/DataUsageSummary;

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settingsstock/DataUsageSummary$AppItem;

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->access$4302(Lcom/android/settingsstock/DataUsageSummary;Lcom/android/settingsstock/DataUsageSummary$AppItem;)Lcom/android/settingsstock/DataUsageSummary$AppItem;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$400(Lcom/android/settingsstock/DataUsageSummary;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settingsstock/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/DataUsageSummary;

    const/4 v1, 0x0

    #setter for: Lcom/android/settingsstock/DataUsageSummary;->mCurrentApp:Lcom/android/settingsstock/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/settingsstock/DataUsageSummary;->access$4302(Lcom/android/settingsstock/DataUsageSummary;Lcom/android/settingsstock/DataUsageSummary$AppItem;)Lcom/android/settingsstock/DataUsageSummary$AppItem;

    #calls: Lcom/android/settingsstock/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settingsstock/DataUsageSummary;->access$400(Lcom/android/settingsstock/DataUsageSummary;)V

    return-void
.end method
