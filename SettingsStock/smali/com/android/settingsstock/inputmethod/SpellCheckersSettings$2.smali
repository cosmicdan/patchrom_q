.class Lcom/android/settingsstock/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/settingsstock/inputmethod/SingleSpellCheckerPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/inputmethod/SpellCheckersSettings;

.field final synthetic val$scp:Lcom/android/settingsstock/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/inputmethod/SpellCheckersSettings;Lcom/android/settingsstock/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/settingsstock/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settingsstock/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/settingsstock/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/android/settingsstock/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settingsstock/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/android/settingsstock/inputmethod/SingleSpellCheckerPreference;

    #calls: Lcom/android/settingsstock/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Lcom/android/settingsstock/inputmethod/SingleSpellCheckerPreference;)V
    invoke-static {v0, v1}, Lcom/android/settingsstock/inputmethod/SpellCheckersSettings;->access$000(Lcom/android/settingsstock/inputmethod/SpellCheckersSettings;Lcom/android/settingsstock/inputmethod/SingleSpellCheckerPreference;)V

    return-void
.end method
