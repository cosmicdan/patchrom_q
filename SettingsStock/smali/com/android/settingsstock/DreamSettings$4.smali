.class Lcom/android/settingsstock/DreamSettings$4;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/DreamSettings;

.field final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/DreamSettings;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/DreamSettings$4;->this$0:Lcom/android/settingsstock/DreamSettings;

    iput-object p2, p0, Lcom/android/settingsstock/DreamSettings$4;->val$onClick:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/DreamSettings$4;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method
