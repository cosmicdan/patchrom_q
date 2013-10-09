.class Lcom/android/settingsstock/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/MasterClear;->establishInitialState()V
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

    iput-object p1, p0, Lcom/android/settingsstock/MasterClear$2;->this$0:Lcom/android/settingsstock/MasterClear;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/MasterClear$2;->this$0:Lcom/android/settingsstock/MasterClear;

    #getter for: Lcom/android/settingsstock/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settingsstock/MasterClear;->access$200(Lcom/android/settingsstock/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
