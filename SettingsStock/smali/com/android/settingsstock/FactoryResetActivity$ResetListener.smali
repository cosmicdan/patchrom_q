.class Lcom/android/settingsstock/FactoryResetActivity$ResetListener;
.super Ljava/lang/Object;
.source "FactoryResetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/FactoryResetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/FactoryResetActivity;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/FactoryResetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/FactoryResetActivity$ResetListener;->this$0:Lcom/android/settingsstock/FactoryResetActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/FactoryResetActivity$ResetListener;->this$0:Lcom/android/settingsstock/FactoryResetActivity;

    const-class v2, Lcom/android/settingsstock/EraseAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settingsstock/FactoryResetActivity$ResetListener;->this$0:Lcom/android/settingsstock/FactoryResetActivity;

    invoke-virtual {v1, v0}, Lcom/android/settingsstock/FactoryResetActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
