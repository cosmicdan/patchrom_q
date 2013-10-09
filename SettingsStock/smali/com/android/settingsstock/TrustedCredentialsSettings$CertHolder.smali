.class Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;

.field private final mAlias:Ljava/lang/String;

.field private mDeleted:Z

.field private final mSslCert:Landroid/net/http/SslCertificate;

.field private final mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private final mSubjectPrimary:Ljava/lang/String;

.field private final mSubjectSecondary:Ljava/lang/String;

.field private final mTab:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

.field private final mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iput-object p2, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iput-object p3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    iput-object p4, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, p5}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    iget-object v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    iget-object v4, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iget-object v5, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    #calls: Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->deleted(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    invoke-static {v3, v4, v5}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->access$2500(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return-void

    :cond_0
    iput-object v1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settingsstock/TrustedCredentialsSettings$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mDeleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Landroid/net/http/SslCertificate;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)I
    .locals 3

    iget-object v1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;

    invoke-virtual {p0, p1}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->compareTo(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;

    iget-object v1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
