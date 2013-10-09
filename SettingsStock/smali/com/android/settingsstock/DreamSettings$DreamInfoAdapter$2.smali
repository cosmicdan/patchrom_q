.class Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$2;->this$1:Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;

    iput-object p2, p0, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$2;->val$row:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$2;->this$1:Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;

    iget-object v0, v0, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter;->this$0:Lcom/android/settingsstock/DreamSettings;

    #getter for: Lcom/android/settingsstock/DreamSettings;->mBackend:Lcom/android/settingsstock/DreamBackend;
    invoke-static {v0}, Lcom/android/settingsstock/DreamSettings;->access$200(Lcom/android/settingsstock/DreamSettings;)Lcom/android/settingsstock/DreamBackend;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$DreamInfoAdapter$2;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/DreamBackend$DreamInfo;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/DreamBackend;->launchSettings(Lcom/android/settingsstock/DreamBackend$DreamInfo;)V

    return-void
.end method
