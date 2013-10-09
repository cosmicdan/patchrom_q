.class Lcom/android/settingsstock/RadioInfo$21;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settingsstock/RadioInfo$21;->this$0:Lcom/android/settingsstock/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/RadioInfo$21;->this$0:Lcom/android/settingsstock/RadioInfo;

    #calls: Lcom/android/settingsstock/RadioInfo;->refreshSmsc()V
    invoke-static {v0}, Lcom/android/settingsstock/RadioInfo;->access$4300(Lcom/android/settingsstock/RadioInfo;)V

    return-void
.end method
