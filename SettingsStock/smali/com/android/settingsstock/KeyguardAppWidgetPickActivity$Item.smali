.class public Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;
.super Ljava/lang/Object;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Lcom/android/settingsstock/AppWidgetLoader$LabelledItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;
    }
.end annotation


# static fields
.field protected static sResizer:Landroid/app/LauncherActivity$IconResizer;


# instance fields
.field appWidgetPreviewId:I

.field className:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field iconId:I

.field label:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mWidgetPreviewLoader:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->label:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method cancelLoadingWidgetPreview()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    :cond_0
    return-void
.end method

.method getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method loadWidgetPreview(Landroid/widget/ImageView;)V
    .locals 3

    new-instance v0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;-><init>(Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    iget-object v1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->mWidgetPreviewLoader:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
