.class Lcom/android/settingsstock/CryptKeeper$2;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/CryptKeeper;->showFactoryReset()V
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

    iput-object p1, p0, Lcom/android/settingsstock/CryptKeeper$2;->this$0:Lcom/android/settingsstock/CryptKeeper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingsstock/CryptKeeper$2;->this$0:Lcom/android/settingsstock/CryptKeeper;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
