.class Lcom/android/settingsstock/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/TrustedCredentialsSettings;->addTab(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/TrustedCredentialsSettings;Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$1;->this$0:Lcom/android/settingsstock/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$1;->this$0:Lcom/android/settingsstock/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    #calls: Lcom/android/settingsstock/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/settingsstock/TrustedCredentialsSettings;->access$1000(Lcom/android/settingsstock/TrustedCredentialsSettings;Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method
