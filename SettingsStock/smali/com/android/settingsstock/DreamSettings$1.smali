.class Lcom/android/settingsstock/DreamSettings$1;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DreamSettings;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settingsstock/DreamSettings$1;->this$0:Lcom/android/settingsstock/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$1;->this$0:Lcom/android/settingsstock/DreamSettings;

    #getter for: Lcom/android/settingsstock/DreamSettings;->mRefreshing:Z
    invoke-static {v0}, Lcom/android/settingsstock/DreamSettings;->access$100(Lcom/android/settingsstock/DreamSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$1;->this$0:Lcom/android/settingsstock/DreamSettings;

    #getter for: Lcom/android/settingsstock/DreamSettings;->mBackend:Lcom/android/settingsstock/DreamBackend;
    invoke-static {v0}, Lcom/android/settingsstock/DreamSettings;->access$200(Lcom/android/settingsstock/DreamSettings;)Lcom/android/settingsstock/DreamBackend;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingsstock/DreamBackend;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$1;->this$0:Lcom/android/settingsstock/DreamSettings;

    #calls: Lcom/android/settingsstock/DreamSettings;->refreshFromBackend()V
    invoke-static {v0}, Lcom/android/settingsstock/DreamSettings;->access$300(Lcom/android/settingsstock/DreamSettings;)V

    :cond_0
    return-void
.end method
