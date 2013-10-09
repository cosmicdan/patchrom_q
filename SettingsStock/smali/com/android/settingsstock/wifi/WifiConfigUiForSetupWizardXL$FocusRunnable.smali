.class Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;
.super Ljava/lang/Object;
.source "WifiConfigUiForSetupWizardXL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusRunnable"
.end annotation


# instance fields
.field final mViewToBeFocused:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;


# direct methods
.method public constructor <init>(Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->this$0:Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->mViewToBeFocused:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->this$0:Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;

    #getter for: Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->access$000(Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->mViewToBeFocused:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL$FocusRunnable;->this$0:Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;

    #getter for: Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->mActivity:Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;->access$100(Lcom/android/settingsstock/wifi/WifiConfigUiForSetupWizardXL;)Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/settingsstock/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "SetupWizard"

    const-string v2, "Failed to show software keyboard "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
