.class public final enum Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0b0613

    sget-object v4, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f0b0626

    sget-object v4, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f0b0616

    sget-object v4, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f0b0617

    sget-object v4, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f0b0618

    sget-object v4, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f0b0611

    sget-object v4, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f0b0619

    sget-object v4, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    iput-object p4, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iput-object p5, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iput p6, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    iput-boolean p7, p0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    const-class v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingsstock/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
