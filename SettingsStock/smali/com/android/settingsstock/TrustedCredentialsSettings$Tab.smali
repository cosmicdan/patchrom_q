.class final enum Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mLabel:I

.field private final mList:I

.field private final mProgress:I

.field private final mTag:Ljava/lang/String;

.field private final mView:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f0b08fd

    const v5, 0x7f08018d

    const v6, 0x7f08018e

    const v7, 0x7f08018f

    invoke-direct/range {v0 .. v8}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    new-instance v6, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    const-string v7, "USER"

    const-string v9, "user"

    const v10, 0x7f0b08fe

    const v11, 0x7f080190

    const v12, 0x7f080191

    const v13, 0x7f080192

    move v14, v2

    invoke-direct/range {v6 .. v14}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V

    sput-object v6, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    iput p4, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mLabel:I

    iput p5, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mView:I

    iput p6, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mProgress:I

    iput p7, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mList:I

    iput-boolean p8, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->getAliases(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->deleted(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;ZLcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;)I
    .locals 1

    iget v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/settingsstock/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settingsstock$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settingsstock/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settingsstock$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->allSystemAliases()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)I
    .locals 2

    sget-object v0, Lcom/android/settingsstock/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settingsstock$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    #getter for: Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0902

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0903

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0904

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)I
    .locals 2

    sget-object v0, Lcom/android/settingsstock/TrustedCredentialsSettings$4;->$SwitchMap$com$android$settingsstock$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    #getter for: Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0900

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b08ff

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0901

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)V
    .locals 1

    if-eqz p1, :cond_2

    #getter for: Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    #getter for: Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->access$002(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;Z)Z

    :goto_1
    #getter for: Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    #getter for: Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    #getter for: Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    #getter for: Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-static {p2}, Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/android/settingsstock/TrustedCredentialsSettings$CertHolder;)Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;

    move-result-object v0

    #calls: Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V
    invoke-static {v0}, Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$400(Lcom/android/settingsstock/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;
    .locals 1

    const-class v0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingsstock/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
