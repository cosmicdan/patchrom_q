.class Lcom/android/settingsstock/inputmethod/CheckBoxAndSettingsPreference$2;
.super Ljava/lang/Object;
.source "CheckBoxAndSettingsPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/inputmethod/CheckBoxAndSettingsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/inputmethod/CheckBoxAndSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/inputmethod/CheckBoxAndSettingsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/inputmethod/CheckBoxAndSettingsPreference$2;->this$0:Lcom/android/settingsstock/inputmethod/CheckBoxAndSettingsPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/CheckBoxAndSettingsPreference$2;->this$0:Lcom/android/settingsstock/inputmethod/CheckBoxAndSettingsPreference;

    invoke-virtual {v0}, Lcom/android/settingsstock/inputmethod/CheckBoxAndSettingsPreference;->onSettingsButtonClicked()V

    return-void
.end method
