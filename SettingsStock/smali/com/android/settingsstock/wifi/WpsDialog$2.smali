.class Lcom/android/settingsstock/wifi/WpsDialog$2;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/wifi/WpsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/WpsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WpsDialog$2;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WpsDialog$2;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settingsstock/wifi/WpsDialog;->dismiss()V

    return-void
.end method
