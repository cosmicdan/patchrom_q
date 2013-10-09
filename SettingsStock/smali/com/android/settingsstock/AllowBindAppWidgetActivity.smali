.class public Lcom/android/settingsstock/AllowBindAppWidgetActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AllowBindAppWidgetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCallingPackage:Ljava/lang/String;

.field private mClicked:Z

.field private mComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->setResult(I)V

    iget v3, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetId:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetId:I

    iget-object v5, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->finish()V

    return-void

    :catch_0
    move-exception v1

    const-string v3, "BIND_APPWIDGET"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding widget with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and component "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_0

    :try_start_0
    const-string v7, "appWidgetId"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetId:I

    const-string v7, "appWidgetProvider"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    iput-object v7, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v7, 0x7f0b0723

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v7, 0x7f0b0724

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v7, 0x7f0b0269

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v7, 0x104

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v7, 0x1090027

    invoke-virtual {v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v7, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x1020265

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    const v8, 0x7f0b0725

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v9

    iget-object v10, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v10

    iget-object v11, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    add-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/CheckBox;->setPadding(IIII)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v7, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v9, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->setupAlert()V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    iput v11, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mAppWidgetId:I

    iput-object v9, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    iput-object v9, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    const-string v7, "BIND_APPWIDGET"

    const-string v8, "Error getting parameters"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v10}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->mClicked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settingsstock/AllowBindAppWidgetActivity;->finish()V

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
