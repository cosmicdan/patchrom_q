.class Lcom/android/settingsstock/DisplaySettings$4;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DisplaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DisplaySettings$4;->this$0:Lcom/android/settingsstock/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DisplaySettings$4;->this$0:Lcom/android/settingsstock/DisplaySettings;

    #getter for: Lcom/android/settingsstock/DisplaySettings;->mFontSizePref:Lcom/android/settingsstock/WarnedListPreference;
    invoke-static {v0}, Lcom/android/settingsstock/DisplaySettings;->access$400(Lcom/android/settingsstock/DisplaySettings;)Lcom/android/settingsstock/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/WarnedListPreference;->click()V

    return-void
.end method
