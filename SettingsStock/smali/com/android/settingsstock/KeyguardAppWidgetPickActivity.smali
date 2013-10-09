.class public Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;
.super Landroid/app/Activity;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settingsstock/AppWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$AppWidgetAdapter;,
        Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/android/settingsstock/AppWidgetLoader$ItemConstructor",
        "<",
        "Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final REQUEST_CREATE_APPWIDGET:I = 0x7f

.field private static final REQUEST_PICK_APPWIDGET:I = 0x7e

.field private static final TAG:Ljava/lang/String; = "KeyguardAppWidgetPickActivity"


# instance fields
.field private mAddingToKeyguard:Z

.field private mAppWidgetAdapter:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

.field private mAppWidgetId:I

.field private mAppWidgetLoader:Lcom/android/settingsstock/AppWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingsstock/AppWidgetLoader",
            "<",
            "Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mExtraConfigureOptions:Landroid/os/Bundle;

.field private mGridView:Landroid/widget/GridView;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResultData:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    return-void
.end method

.method private finishDelayedAndShowLockScreen(I)V
    .locals 10

    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "showappwidget"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v6, 0x7f080063

    invoke-virtual {p0, v6}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    new-instance v7, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$1;-><init>(Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;
    .locals 3

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    new-instance v0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;

    invoke-direct {v0, p1, v1}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v2, v0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->appWidgetPreviewId:I

    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v2, v0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->iconId:I

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x7e

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x7f

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-eq p1, v8, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    if-nez p3, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ne p1, v8, :cond_4

    if-ne p2, v6, :cond_4

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v3, v5}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->startActivityForResultSafely(Landroid/content/Intent;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    :cond_4
    if-ne p1, v5, :cond_5

    if-ne p2, v6, :cond_5

    iget-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v1, v7}, Lcom/android/internal/widget/LockPatternUtils;->addAppWidget(II)Z

    invoke-direct {p0, v1}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1

    :cond_5
    iget-boolean v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-static {v4}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetIdForSystem(I)V

    :cond_6
    invoke-direct {p0, v7}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f040041

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->setContentView(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "appWidgetId"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "appWidgetId"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    :goto_0
    const-string v4, "appWidgetOptions"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    const-string v4, "tablet"

    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->setRequestedOrientation(I)V

    :cond_0
    const v4, 0x7f0800ba

    invoke-virtual {p0, v4}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    iput-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v4, Lcom/android/settingsstock/AppWidgetLoader;

    iget-object v5, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v4, p0, v5, p0}, Lcom/android/settingsstock/AppWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settingsstock/AppWidgetLoader$ItemConstructor;)V

    iput-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settingsstock/AppWidgetLoader;

    iget-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settingsstock/AppWidgetLoader;

    invoke-virtual {p0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingsstock/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    iget-object v5, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$AppWidgetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    iget-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetAdapter:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$AppWidgetAdapter;

    invoke-virtual {v0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$AppWidgetAdapter;->cancelAllWidgetPreviewLoaders()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;

    invoke-virtual {v3}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v5, v3, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$Item;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    :goto_0
    iget-boolean v5, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v5, :cond_2

    const/16 v5, 0x7e

    iget-object v6, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    :try_start_0
    iget-boolean v5, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAddingToKeyguard:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    if-nez v5, :cond_1

    const v0, 0x4b455947

    const v5, 0x4b455947

    invoke-static {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetIdForSystem(I)I

    move-result v5

    iput v5, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    :cond_1
    iget-object v5, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v6, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mExtraConfigureOptions:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    :goto_2
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->finish()V

    goto :goto_1
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4

    const v2, 0x7f0b0629

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "KeyguardAppWidgetPickActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
