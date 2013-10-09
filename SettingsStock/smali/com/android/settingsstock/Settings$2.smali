.class Lcom/android/settingsstock/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/Settings;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/Settings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/Settings$2;->this$0:Lcom/android/settingsstock/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingsstock/Settings$2;->this$0:Lcom/android/settingsstock/Settings;

    iget-object v1, p0, Lcom/android/settingsstock/Settings$2;->this$0:Lcom/android/settingsstock/Settings;

    #getter for: Lcom/android/settingsstock/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settingsstock/Settings;->access$100(Lcom/android/settingsstock/Settings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #calls: Lcom/android/settingsstock/Settings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settingsstock/Settings;->access$200(Lcom/android/settingsstock/Settings;Ljava/lang/String;)V

    return-void
.end method
