.class Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mSubjectPrimaryView:Landroid/widget/TextView;

.field private mSubjectSecondaryView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingsstock/TrustedCredentialsSettings$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/TrustedCredentialsSettings$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object p1
.end method
