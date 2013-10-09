.class public final enum Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const v5, 0x7f0b03b8

    const/4 v15, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f0b0600

    const v4, 0x7f0b0602

    invoke-direct/range {v0 .. v5}, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    new-instance v6, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v7, "NeedToConfirm"

    const v9, 0x7f0b0603

    const v10, 0x7f0b0605

    const v11, 0x7f0b03c2

    invoke-direct/range {v6 .. v11}, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    new-instance v9, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v10, "ConfirmWrong"

    const v12, 0x7f0b0606

    const v13, 0x7f0b0607

    move v11, v15

    move v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    iput p4, p0, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    iput p5, p0, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    const-class v0, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    sget-object v0, Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingsstock/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
