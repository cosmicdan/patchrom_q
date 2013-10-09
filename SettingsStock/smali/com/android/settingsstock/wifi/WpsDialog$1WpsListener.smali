.class Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/wifi/WpsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    sget-object v1, Lcom/android/settingsstock/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settingsstock/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    #getter for: Lcom/android/settingsstock/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settingsstock/wifi/WpsDialog;->access$000(Lcom/android/settingsstock/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b045c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settingsstock/wifi/WpsDialog;->updateDialog(Lcom/android/settingsstock/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settingsstock/wifi/WpsDialog;->access$100(Lcom/android/settingsstock/wifi/WpsDialog;Lcom/android/settingsstock/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    #getter for: Lcom/android/settingsstock/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WpsDialog;->access$000(Lcom/android/settingsstock/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b045f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    sget-object v2, Lcom/android/settingsstock/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/settingsstock/wifi/WpsDialog$DialogState;

    #calls: Lcom/android/settingsstock/wifi/WpsDialog;->updateDialog(Lcom/android/settingsstock/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/settingsstock/wifi/WpsDialog;->access$100(Lcom/android/settingsstock/wifi/WpsDialog;Lcom/android/settingsstock/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    #getter for: Lcom/android/settingsstock/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WpsDialog;->access$000(Lcom/android/settingsstock/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0463

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    #getter for: Lcom/android/settingsstock/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WpsDialog;->access$000(Lcom/android/settingsstock/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0460

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    #getter for: Lcom/android/settingsstock/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WpsDialog;->access$000(Lcom/android/settingsstock/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0461

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    #getter for: Lcom/android/settingsstock/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settingsstock/wifi/WpsDialog;->access$000(Lcom/android/settingsstock/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b045e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartSuccess(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    sget-object v1, Lcom/android/settingsstock/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settingsstock/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    #getter for: Lcom/android/settingsstock/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settingsstock/wifi/WpsDialog;->access$000(Lcom/android/settingsstock/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b045b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settingsstock/wifi/WpsDialog;->updateDialog(Lcom/android/settingsstock/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settingsstock/wifi/WpsDialog;->access$100(Lcom/android/settingsstock/wifi/WpsDialog;Lcom/android/settingsstock/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    sget-object v1, Lcom/android/settingsstock/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settingsstock/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lcom/android/settingsstock/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settingsstock/wifi/WpsDialog;

    #getter for: Lcom/android/settingsstock/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settingsstock/wifi/WpsDialog;->access$000(Lcom/android/settingsstock/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b045a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settingsstock/wifi/WpsDialog;->updateDialog(Lcom/android/settingsstock/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settingsstock/wifi/WpsDialog;->access$100(Lcom/android/settingsstock/wifi/WpsDialog;Lcom/android/settingsstock/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method
