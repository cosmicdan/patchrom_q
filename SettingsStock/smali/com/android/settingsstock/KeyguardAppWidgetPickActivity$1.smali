.class Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$1;
.super Ljava/lang/Object;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;

    invoke-virtual {v0}, Lcom/android/settingsstock/KeyguardAppWidgetPickActivity;->finish()V

    return-void
.end method
