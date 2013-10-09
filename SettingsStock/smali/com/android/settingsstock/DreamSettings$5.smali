.class Lcom/android/settingsstock/DreamSettings$5;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/settingsstock/DreamSettings$5;->this$0:Lcom/android/settingsstock/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$5;->this$0:Lcom/android/settingsstock/DreamSettings;

    #getter for: Lcom/android/settingsstock/DreamSettings;->mBackend:Lcom/android/settingsstock/DreamBackend;
    invoke-static {v0}, Lcom/android/settingsstock/DreamSettings;->access$200(Lcom/android/settingsstock/DreamSettings;)Lcom/android/settingsstock/DreamBackend;

    move-result-object v3

    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settingsstock/DreamBackend;->setActivatedOnDock(Z)V

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$5;->this$0:Lcom/android/settingsstock/DreamSettings;

    #getter for: Lcom/android/settingsstock/DreamSettings;->mBackend:Lcom/android/settingsstock/DreamBackend;
    invoke-static {v0}, Lcom/android/settingsstock/DreamSettings;->access$200(Lcom/android/settingsstock/DreamSettings;)Lcom/android/settingsstock/DreamBackend;

    move-result-object v0

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settingsstock/DreamBackend;->setActivatedOnSleep(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method
