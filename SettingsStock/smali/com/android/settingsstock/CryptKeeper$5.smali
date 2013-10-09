.class Lcom/android/settingsstock/CryptKeeper$5;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/CryptKeeper;->updateEmergencyCallButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/CryptKeeper$5;->this$0:Lcom/android/settingsstock/CryptKeeper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeper$5;->this$0:Lcom/android/settingsstock/CryptKeeper;

    #calls: Lcom/android/settingsstock/CryptKeeper;->takeEmergencyCallAction()V
    invoke-static {v0}, Lcom/android/settingsstock/CryptKeeper;->access$1100(Lcom/android/settingsstock/CryptKeeper;)V

    return-void
.end method
