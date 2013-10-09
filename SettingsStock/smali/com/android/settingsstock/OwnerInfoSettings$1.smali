.class Lcom/android/settingsstock/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/OwnerInfoSettings;

.field final synthetic val$res:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/OwnerInfoSettings;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/OwnerInfoSettings$1;->this$0:Lcom/android/settingsstock/OwnerInfoSettings;

    iput-object p2, p0, Lcom/android/settingsstock/OwnerInfoSettings$1;->val$res:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/OwnerInfoSettings$1;->val$res:Landroid/content/ContentResolver;

    const-string v2, "lock_screen_owner_info_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settingsstock/OwnerInfoSettings$1;->this$0:Lcom/android/settingsstock/OwnerInfoSettings;

    #getter for: Lcom/android/settingsstock/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settingsstock/OwnerInfoSettings;->access$000(Lcom/android/settingsstock/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
