.class Lcom/android/settingsstock/ApnEditor$3;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/ApnEditor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/ApnEditor$3;->this$0:Lcom/android/settingsstock/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/settingsstock/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background changed apn "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor$3;->this$0:Lcom/android/settingsstock/ApnEditor;

    const/4 v1, 0x1

    #setter for: Lcom/android/settingsstock/ApnEditor;->mFirstTime:Z
    invoke-static {v0, v1}, Lcom/android/settingsstock/ApnEditor;->access$1502(Lcom/android/settingsstock/ApnEditor;Z)Z

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor$3;->this$0:Lcom/android/settingsstock/ApnEditor;

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor$3;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settingsstock/ApnEditor;->access$1600(Lcom/android/settingsstock/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingsstock/ApnEditor;->stopManagingCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor$3;->this$0:Lcom/android/settingsstock/ApnEditor;

    iget-object v1, p0, Lcom/android/settingsstock/ApnEditor$3;->this$0:Lcom/android/settingsstock/ApnEditor;

    iget-object v2, p0, Lcom/android/settingsstock/ApnEditor$3;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/settingsstock/ApnEditor;->access$1700(Lcom/android/settingsstock/ApnEditor;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/android/settingsstock/ApnEditor;->access$1800()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/settingsstock/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    #setter for: Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/settingsstock/ApnEditor;->access$1602(Lcom/android/settingsstock/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor$3;->this$0:Lcom/android/settingsstock/ApnEditor;

    #getter for: Lcom/android/settingsstock/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/settingsstock/ApnEditor;->access$1600(Lcom/android/settingsstock/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/android/settingsstock/ApnEditor$3;->this$0:Lcom/android/settingsstock/ApnEditor;

    #calls: Lcom/android/settingsstock/ApnEditor;->fillUi()V
    invoke-static {v0}, Lcom/android/settingsstock/ApnEditor;->access$1900(Lcom/android/settingsstock/ApnEditor;)V

    return-void
.end method
