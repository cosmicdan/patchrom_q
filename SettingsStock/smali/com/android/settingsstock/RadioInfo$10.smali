.class Lcom/android/settingsstock/RadioInfo$10;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/RadioInfo$10;->this$0:Lcom/android/settingsstock/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$10;->this$0:Lcom/android/settingsstock/RadioInfo;

    #getter for: Lcom/android/settingsstock/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$1800(Lcom/android/settingsstock/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    const/4 v0, 0x1

    return v0
.end method
