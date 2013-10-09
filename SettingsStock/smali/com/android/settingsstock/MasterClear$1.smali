.class Lcom/android/settingsstock/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/MasterClear;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/MasterClear$1;->this$0:Lcom/android/settingsstock/MasterClear;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/MasterClear$1;->this$0:Lcom/android/settingsstock/MasterClear;

    const/16 v1, 0x37

    #calls: Lcom/android/settingsstock/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/MasterClear;->access$000(Lcom/android/settingsstock/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/MasterClear$1;->this$0:Lcom/android/settingsstock/MasterClear;

    #calls: Lcom/android/settingsstock/MasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/settingsstock/MasterClear;->access$100(Lcom/android/settingsstock/MasterClear;)V

    :cond_0
    return-void
.end method
