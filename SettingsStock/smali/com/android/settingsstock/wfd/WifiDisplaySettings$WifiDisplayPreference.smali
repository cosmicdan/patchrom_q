.class final Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayPreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDisplay()Landroid/hardware/display/WifiDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f08000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->this$0:Lcom/android/settingsstock/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settingsstock/wfd/WifiDisplaySettings$WifiDisplayPreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    #calls: Lcom/android/settingsstock/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    invoke-static {v0, v1}, Lcom/android/settingsstock/wfd/WifiDisplaySettings;->access$600(Lcom/android/settingsstock/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method
