.class Lcom/android/settingsstock/accounts/AccountPreferenceBase$1$1;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/accounts/AccountPreferenceBase$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settingsstock/accounts/AccountPreferenceBase$1;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/accounts/AccountPreferenceBase$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/accounts/AccountPreferenceBase$1$1;->this$1:Lcom/android/settingsstock/accounts/AccountPreferenceBase$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/accounts/AccountPreferenceBase$1$1;->this$1:Lcom/android/settingsstock/accounts/AccountPreferenceBase$1;

    iget-object v0, v0, Lcom/android/settingsstock/accounts/AccountPreferenceBase$1;->this$0:Lcom/android/settingsstock/accounts/AccountPreferenceBase;

    invoke-virtual {v0}, Lcom/android/settingsstock/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    return-void
.end method