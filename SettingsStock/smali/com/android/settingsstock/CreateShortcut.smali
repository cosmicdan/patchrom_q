.class public Lcom/android/settingsstock/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# static fields
.field private static final AUDIOPROFILE:Ljava/lang/String; = "com.android.settingsstock.Settings$AudioProfileSettingsActivity"

.field private static final SOUND:Ljava/lang/String; = "com.android.settingsstock.Settings$SoundSettingsActivity"

.field private static final TAG:Ljava/lang/String; = "CreateShortcut"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.android.settingsstock.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public makeListItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/LauncherActivity;->makeListItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    const-string v4, "com.android.settingsstock.Settings$SoundSettingsActivity"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CreateShortcut"

    const-string v4, "Not support google sound ,remove it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/android/settingsstock/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/high16 v3, 0x7f03

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Lcom/android/settingsstock/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v3

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settingsstock/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/CreateShortcut;->finish()V

    return-void
.end method
