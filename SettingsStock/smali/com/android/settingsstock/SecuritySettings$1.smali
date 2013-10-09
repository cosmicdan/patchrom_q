.class Lcom/android/settingsstock/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/SecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/SecuritySettings$1;->this$0:Lcom/android/settingsstock/SecuritySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/SecuritySettings$1;->this$0:Lcom/android/settingsstock/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settingsstock/SecuritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingsstock/SecuritySettings$1;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v1}, Lcom/android/settingsstock/SecuritySettings;->access$000(Lcom/android/settingsstock/SecuritySettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/android/settingsstock/SecuritySettings$1;->this$0:Lcom/android/settingsstock/SecuritySettings;

    #getter for: Lcom/android/settingsstock/SecuritySettings;->mUnknownSourcesPosition:I
    invoke-static {v1}, Lcom/android/settingsstock/SecuritySettings;->access$000(Lcom/android/settingsstock/SecuritySettings;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method
