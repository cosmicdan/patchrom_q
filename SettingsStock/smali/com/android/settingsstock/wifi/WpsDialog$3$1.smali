.class Lcom/android/settingsstock/wifi/WpsDialog$3$1;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/wifi/WpsDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settingsstock/wifi/WpsDialog$3;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/WpsDialog$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WpsDialog$3$1;->this$1:Lcom/android/settingsstock/wifi/WpsDialog$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WpsDialog$3$1;->this$1:Lcom/android/settingsstock/wifi/WpsDialog$3;

    iget-object v0, v0, Lcom/android/settingsstock/wifi/WpsDialog$3;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    #getter for: Lcom/android/settingsstock/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/settingsstock/wifi/WpsDialog;->access$300(Lcom/android/settingsstock/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    return-void
.end method
