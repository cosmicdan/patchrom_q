.class Lcom/android/settingsstock/DreamSettings$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DreamSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DreamSettings$2;->this$0:Lcom/android/settingsstock/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$2;->this$0:Lcom/android/settingsstock/DreamSettings;

    #getter for: Lcom/android/settingsstock/DreamSettings;->mBackend:Lcom/android/settingsstock/DreamBackend;
    invoke-static {v0}, Lcom/android/settingsstock/DreamSettings;->access$200(Lcom/android/settingsstock/DreamSettings;)Lcom/android/settingsstock/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/DreamBackend;->startDreaming()V

    return-void
.end method
